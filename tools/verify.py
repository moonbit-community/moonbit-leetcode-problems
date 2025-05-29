#!/usr/bin/env python3
"""
Usage:
  ./verify.py --cookies cookies.json --solution solution.js <PROBLEM_NUMBER>
  ./verify.py --cookies cookies.json --solution <SOLUTION_STRING> <PROBLEM_NUMBER>

Please note that cookies.json must have a valid "csrftoken" entry.

You can use Chromium browser to log into https://leetcode.com/problems
and then use https://chromewebstore.google.com/detail/ojfebgpkimhlhcblbalbfjblapadhbol
to export the required cookies.json as a string.
"""

import os
import sys
import json
import time
import argparse
from pathlib import Path
from typing import Optional, Dict, Any, Tuple
from urllib.request import Request, HTTPCookieProcessor, build_opener
from urllib.error import HTTPError, URLError
from http.cookiejar import CookieJar, Cookie


class LeetCodeSubmitter:
    """Handles LeetCode solution submission via HTTP requests using standard library."""

    def __init__(self, cookies_file: Optional[str] = None):
        """
        Initialize the LeetCode submitter.

        Args:
            cookies_file: Path to file containing browser cookies (JSON format)
        """
        self.base_url = "https://leetcode.com"
        self.graphql_url = f"{self.base_url}/graphql"

        # Create cookie jar and opener
        self.cookie_jar = CookieJar()
        self.opener = build_opener(HTTPCookieProcessor(self.cookie_jar))

        # Set common headers
        self.default_headers = {
            "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Accept": "application/json",
            "Content-Type": "application/json",
            "Referer": self.base_url,
            "Origin": self.base_url,
        }

        if cookies_file and os.path.exists(cookies_file):
            self.load_cookies(cookies_file)

    def load_cookies(self, cookies_file: str):
        """Load cookies from a JSON file."""
        try:
            with open(cookies_file, "r") as f:
                cookies_data = json.load(f)

            # Handle different cookie formats
            if isinstance(cookies_data, list):
                # Chrome export format
                for cookie_data in cookies_data:
                    if cookie_data.get("domain", "").endswith("leetcode.com"):
                        cookie = Cookie(
                            version=0,
                            name=cookie_data["name"],
                            value=cookie_data["value"],
                            port=None,
                            port_specified=False,
                            domain=cookie_data.get("domain", ".leetcode.com"),
                            domain_specified=True,
                            domain_initial_dot=cookie_data.get("domain", "").startswith(
                                "."
                            ),
                            path=cookie_data.get("path", "/"),
                            path_specified=True,
                            secure=cookie_data.get("secure", False),
                            expires=cookie_data.get("expirationDate"),
                            discard=False,
                            comment=None,
                            comment_url=None,
                            rest={},
                        )
                        self.cookie_jar.set_cookie(cookie)
            elif isinstance(cookies_data, dict):
                # Simple key-value format
                for name, value in cookies_data.items():
                    cookie = Cookie(
                        version=0,
                        name=name,
                        value=value,
                        port=None,
                        port_specified=False,
                        domain=".leetcode.com",
                        domain_specified=True,
                        domain_initial_dot=True,
                        path="/",
                        path_specified=True,
                        secure=True,
                        expires=None,
                        discard=False,
                        comment=None,
                        comment_url=None,
                        rest={},
                    )
                    self.cookie_jar.set_cookie(cookie)

            print(f"Loaded cookies from {cookies_file}")
        except Exception as e:
            print(f"Warning: Could not load cookies from {cookies_file}: {e}")

    def make_request(
        self, url: str, data: Optional[Dict] = None, headers: Optional[Dict] = None
    ) -> Tuple[int, str]:
        """
        Make an HTTP request using urllib.

        Args:
            url: Request URL
            data: POST data (if None, makes GET request)
            headers: Additional headers

        Returns:
            Tuple of (status_code, response_text)
        """
        try:
            # Prepare headers
            req_headers = self.default_headers.copy()
            if headers:
                req_headers.update(headers)

            # Prepare request
            if data is not None:
                # POST request
                json_data = json.dumps(data).encode("utf-8")
                req = Request(url, data=json_data, headers=req_headers)
            else:
                # GET request
                req = Request(url, headers=req_headers)

            # Make request
            response = self.opener.open(req, timeout=30)
            response_text = response.read().decode("utf-8")
            return response.status, response_text

        except HTTPError as e:
            error_text = e.read().decode("utf-8") if hasattr(e, "read") else str(e)
            return e.code, error_text
        except URLError as e:
            return 0, str(e)
        except Exception as e:
            return 0, str(e)

    def get_csrf_token(self) -> Optional[str]:
        """Get CSRF token from LeetCode."""
        try:
            # Extract CSRF token from cookies
            for cookie in self.cookie_jar:
                if cookie.name == "csrftoken":
                    self.default_headers["X-CSRFToken"] = cookie.value
                    return cookie.value
        except Exception as e:
            print(f"Error getting CSRF token: {e}")
        return None

    def get_problem_info(self, problem_slug: str) -> Optional[Dict[str, Any]]:
        """
        Get problem information including question ID.

        Args:
            problem_slug: The problem slug (e.g., "two-sum")

        Returns:
            Problem information dict or None if failed
        """
        query = """
        query questionData($titleSlug: String!) {
            question(titleSlug: $titleSlug) {
                questionId
                title
                difficulty
            }
        }
        """

        variables = {"titleSlug": problem_slug}
        data = {"query": query, "variables": variables}

        try:
            status, response = self.make_request(self.graphql_url, data)

            if status == 200:
                result = json.loads(response)
                if "data" in result and result["data"]["question"]:
                    return result["data"]["question"]
            else:
                print(f"Error getting problem info: HTTP {status}")

        except Exception as e:
            print(f"Error getting problem info: {e}")

        return None

    def submit_solution(
        self, problem_slug: str, solution_code: str, language: str = "javascript"
    ) -> Dict[str, Any]:
        """
        Submit a solution to LeetCode.

        Args:
            problem_slug: The problem slug (e.g., "two-sum")
            solution_code: The solution code
            language: Programming language (default: "javascript")

        Returns:
            Submission result dict
        """
        # Get CSRF token
        csrf_token = self.get_csrf_token()
        if not csrf_token:
            return {"success": False, "error": "Could not get CSRF token"}

        # Get problem info
        problem_info = self.get_problem_info(problem_slug)
        if not problem_info:
            return {
                "success": False,
                "error": f"Could not find problem: {problem_slug}",
            }

        question_id = problem_info["questionId"]

        # Submit solution
        submit_url = f"{self.base_url}/problems/{problem_slug}/submit/"

        payload = {
            "lang": language,
            "question_id": question_id,
            "typed_code": solution_code,
        }

        try:
            status, response = self.make_request(submit_url, payload)

            if status == 200:
                result = json.loads(response)
                if "submission_id" in result:
                    submission_id = result["submission_id"]
                    print(
                        f"Solution submitted successfully! Submission ID: {submission_id}"
                    )

                    # Check submission status
                    return self.check_submission_status(submission_id)
                else:
                    return {
                        "success": False,
                        "error": "No submission ID returned",
                        "response": result,
                    }
            else:
                return {
                    "success": False,
                    "error": f"HTTP {status}",
                    "response": response,
                }

        except Exception as e:
            return {"success": False, "error": str(e)}

    def check_submission_status(
        self, submission_id: str, max_attempts: int = 30
    ) -> Dict[str, Any]:
        """
        Check the status of a submission.

        Args:
            submission_id: The submission ID
            max_attempts: Maximum number of status check attempts

        Returns:
            Final submission result dict
        """
        check_url = f"{self.base_url}/submissions/detail/{submission_id}/check/"

        for attempt in range(max_attempts):
            try:
                status, response = self.make_request(check_url)

                if status == 200:
                    result = json.loads(response)

                    state = result.get("state")
                    if state == "SUCCESS":
                        status_display = result.get("status_msg", "Unknown")
                        runtime = result.get("status_runtime", "N/A")
                        memory = result.get("status_memory", "N/A")

                        print("Submission completed!")
                        print(f"Status: {status_display}")
                        print(f"Runtime: {runtime}")
                        print(f"Memory: {memory}")

                        return {
                            "success": True,
                            "status": status_display,
                            "runtime": runtime,
                            "memory": memory,
                            "full_result": result,
                        }
                    elif state == "PENDING":
                        print(
                            f"Checking submission status... (attempt {attempt + 1}/{max_attempts})"
                        )
                        time.sleep(2)
                        continue
                    else:
                        return {
                            "success": False,
                            "error": f"Unexpected state: {state}",
                            "result": result,
                        }
                else:
                    print(f"Error checking status: HTTP {status}")
                    time.sleep(2)

            except Exception as e:
                print(f"Error checking submission status: {e}")
                time.sleep(2)

        return {"success": False, "error": "Timeout waiting for submission result"}


def number_to_slug(problem_number: int) -> str | None:
    """
    Convert problem number to slug by looking at existing problem directories.

    Args:
        problem_number: LeetCode problem number

    Returns:
        Problem slug string
    """
    # Look for problem directory
    src_dir = Path("../src")
    if not src_dir.exists():
        return f"problem-{problem_number}"

    # Find directory matching the problem number
    pattern = f"{problem_number:04d}-*"
    matches = list(src_dir.glob(pattern))

    if matches:
        name = matches[0].name
        # Extract slug from path (remove number prefix)
        slug = name.split("-", 1)[1] if "-" in name else name
        return slug

    return None


def main():
    """Main function to handle command line arguments and execute submission."""
    parser = argparse.ArgumentParser(
        description="Submit JavaScript solutions to LeetCode"
    )
    parser.add_argument("problem_number", type=int, help="LeetCode problem number")
    parser.add_argument(
        "--solution", "-s", help="JavaScript solution code (or file path)"
    )
    parser.add_argument("--cookies", "-c", help="Path to cookies JSON file")
    parser.add_argument(
        "--language",
        "-l",
        default="javascript",
        help="Programming language (default: javascript)",
    )

    args = parser.parse_args()

    # Get solution code
    solution_code = None
    if args.solution:
        if os.path.isfile(args.solution):
            # Read from file
            with open(args.solution, "r") as f:
                solution_code = f.read()
        else:
            # Use as direct code
            solution_code = args.solution

    if not solution_code:
        print("Error: No solution code provided")
        sys.exit(1)

    # Convert problem number to slug
    problem_slug = number_to_slug(args.problem_number)
    if problem_slug is None:
        print(f"Error: unknown slug for problem #{args.problem_number}")
        print("Hint: Does the problem exist in `src`?")
        sys.exit(1)

    # Create submitter and submit
    submitter = LeetCodeSubmitter(args.cookies)

    print(f"Submitting solution for problem {args.problem_number} ({problem_slug})...")
    print(f"Language: {args.language}")
    print(f"Solution length: {len(solution_code)} characters")

    result = submitter.submit_solution(problem_slug, solution_code, args.language)

    if result["success"]:
        print(":: Submission successful!")
    else:
        print(f":: Submission failed: {result}")
        sys.exit(1)


if __name__ == "__main__":
    main()
