#!/usr/bin/env python3
"""
Script to merge problem files into a single .mbt.md file.

Usage:
  python merge.py <directory>
  python merge.py --verify <directory>
  python merge.py --verify --commit <directory>
"""

import re
import shutil
import sys
import json
import argparse
import subprocess
from pathlib import Path
from urllib.request import Request, urlopen


def parse_type(ty: str) -> str:
    type_mapping = {
        "void": "Unit",
        "boolean": "Bool",
        "integer": "Int",
        "long": "Int64",
        "float": "Float",
        "double": "Double",
        "character": "Char",
        "string": "String",
    }

    def go(ty: str, begin: int = 0, end: int | None = None) -> str:
        if end is None:
            end = len(ty)
        if begin >= end:
            return ""
        if ty.endswith("[]", 0, end):
            return f"Array[{go(ty, begin, end - 2)}]"
        if ty.startswith("list<", begin):
            return f"Array[{go(ty, begin + len('list<'), end - 1)}]"
        t = ty[begin:end]
        return type_mapping.get(t, t + "?" if t[0].isupper() else t)

    return go(ty)


RE_TO_SNAKE = re.compile(r"(?<=[a-z])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])")


def camel_to_snake(camel: str) -> str:
    return RE_TO_SNAKE.sub("_", camel).lower()


def extract_function_signature(title_slug: str):
    url = "https://leetcode.cn/graphql/"

    query = """
    query questionDetail($titleSlug: String!) {
        question(titleSlug: $titleSlug) {
            titleSlug questionId questionFrontendId metaData
        }
    }
    """

    data = {
        "operationName": "questionDetail",
        "query": query,
        "variables": {"titleSlug": title_slug},
    }

    headers = {"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"}

    req = Request(
        url, data=json.dumps(data).encode("utf-8"), headers=headers, method="POST"
    )

    with urlopen(req) as resp_json:
        resp_json = json.loads(resp_json.read().decode("utf-8"))

    metadata = json.loads(resp_json["data"]["question"]["metaData"])
    name = camel_to_snake(metadata["name"])
    params = metadata["params"]
    return_type = metadata["return"]["type"]

    params_str = ", ".join([f"{p['name']}: {parse_type(p['type'])}" for p in params])

    return f"fn {name}({params_str}) -> {parse_type(return_type)}"


def create_suggested_approach(function_signature):
    """Create a suggested approach section with the function signature."""
    assert function_signature

    # Replace the function body with ...
    if function_signature.endswith("{"):
        function_signature = function_signature[:-1].strip()

    return f"```mbt nocheck\npub {function_signature} {{\n  ...\n}}\n```"


def extract_solution_code(solve_content):
    """Extract the solution code from solve.mbt, making it public."""
    lines = solve_content.strip().split("\n")
    result_lines = []

    for line in lines:
        # Skip comment lines starting with ///
        if line.strip().startswith("///"):
            continue

        # Make function public if it's not already
        if line.startswith("fn "):
            line = line.replace("fn ", "pub fn ", 1)

        result_lines.append(line)

    return "\n".join(result_lines)


def extract_tests(test_content):
    """Extract and format test cases from solve_wbtest.mbt."""
    lines = test_content.strip().split("\n")
    result_lines = []

    for line in lines:
        # Skip comment lines starting with ///
        if line.strip().startswith("///"):
            continue

        # Replace assert_eq! with assert_eq
        line = line.replace("assert_eq!", "assert_eq")

        result_lines.append(line)

    return "\n".join(result_lines)


def merge_files(directory_path):
    """Merge all files in the directory into a .mbt.md file.

    Returns:
        Path: The path to the created output file, or None if failed.
    """
    dir_path = Path(directory_path)

    if not dir_path.exists() or not dir_path.is_dir():
        print(f"Error: Directory {directory_path} does not exist or is not a directory")
        return None

    # Extract title slug
    base_name = Path(dir_path).name
    assert (match := re.match(r"^(\d{4})-(.+)$", base_name))
    problem_slug = match.group(2)

    # Read metadata.json
    metadata_file = dir_path / "metadata.json"
    if not metadata_file.exists():
        print(f"Error: metadata.json not found in {directory_path}")
        return None

    with open(metadata_file, "r") as f:
        metadata = json.load(f)

    difficulty = metadata.get("difficulty", "Unknown")

    # Read problem.md
    problem_file = dir_path / "problem.md"
    if not problem_file.exists():
        print(f"Error: problem.md not found in {directory_path}")
        return None

    with open(problem_file, "r") as f:
        problem_content = f.read().strip()

    # Read solve.mbt
    solve_file = dir_path / "solve.mbt"
    if not solve_file.exists():
        print(f"Error: solve.mbt not found in {directory_path}")
        return None

    with open(solve_file, "r") as f:
        solve_content = f.read().strip()

    # Read solve_wbtest.mbt
    test_file = dir_path / "solve_wbtest.mbt"
    if not test_file.exists():
        print(f"Error: solve_wbtest.mbt not found in {directory_path}")
        return None

    with open(test_file, "r") as f:
        test_content = f.read().strip()

    # Extract function signature for suggested approach
    function_signature = extract_function_signature(problem_slug)

    # Create the merged content
    output_content = f"""---
difficulty: {difficulty}
verified: true
---

{problem_content}

## Suggested Approach

{create_suggested_approach(function_signature)}

## Solution

```mbt
{extract_solution_code(solve_content)}
```

## Tests

```moonbit
{extract_tests(test_content)}
```
"""

    # Write to output file
    output_file = dir_path.parent / f"{dir_path.name}.mbt.md"
    output_file.write_text(output_content)
    print(f"Successfully created {output_file}")
    return output_file


def main():
    parser = argparse.ArgumentParser(
        description="Merge problem files into a single .mbt.md file.",
        epilog="Example: python merge.py ./src/0003-longest-substring-without-repeating-characters",
    )
    parser.add_argument("directory", help="Directory containing the problem files")
    parser.add_argument(
        "--verify", action="store_true", help="Run verification after successful merge"
    )
    parser.add_argument(
        "--commit",
        action="store_true",
        help="Run `git commit` after successful verification",
    )

    args = parser.parse_args()

    old_dir = args.directory
    output_file = merge_files(old_dir)
    if output_file is None:
        sys.exit(1)

    # Run verification if requested
    if args.verify:
        try:
            verify_cmd = ["./tools/verify.py", "--md", str(output_file)]
            print(f"Running verification: {' '.join(verify_cmd)}")
            subprocess.run(verify_cmd, check=True)
            print("Verification completed successfully")
        except subprocess.CalledProcessError as e:
            print(f"Verification failed with exit code {e.returncode}")
            sys.exit(1)
        except FileNotFoundError:
            print("Error: ./tools/verify.py not found")
            sys.exit(1)

    print(f"Removing original directory `{old_dir}`")
    shutil.rmtree(old_dir)

    if args.commit:
        try:
            problem_num = output_file.name.split("-", maxsplit=1)[0]
            subprocess.run(
                [
                    "git",
                    "add",
                    str(output_file).removesuffix(".mbt.md"),
                    output_file,
                ],
                check=True,
            )
            commit_cmd = ["git", "commit", "-m", f"Convert {problem_num} to `.mbt.md`"]
            print(f"Committing changes: {' '.join(commit_cmd)}")
            subprocess.run(commit_cmd, check=True)
            print("Changes committed successfully")
        except subprocess.CalledProcessError as e:
            print(f"Commit failed with exit code {e.returncode}")
            sys.exit(1)


if __name__ == "__main__":
    main()
