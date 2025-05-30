---
difficulty: Medium
verified: true
---

# Compare Version Numbers

Given two version numbers, version1 and version2, compare them.

Version numbers consist of one or more revisions joined by a dot '.'. Each revision consists of digits and may contain leading zeros. Every revision contains at least one character. Revisions are 0-indexed from left to right, with the leftmost revision being revision 0, the next revision being revision 1, and so on. For example 2.5.33 and 0.1 are valid version numbers.
To compare version numbers, compare their revisions in left-to-right order. Revisions are compared using their integer value ignoring any leading zeros. This means that revisions 1 and 001 are considered equal. If a version number does not specify a revision at an index, then treat the revision as 0. For example, version 1.0 is less than version 1.1 because their revision 0s are the same, but their revision 1s are 0 and 1 respectively, and 0 < 1.
Return the following:

If version1 < version2, return -1.
If version1 > version2, return 1.
Otherwise, return 0.

Example 1:

Input: version1 = "1.01", version2 = "1.001"
Output: 0
Explanation: Ignoring leading zeroes, both "01" and "001" represent the same integer "1".

Example 2:

Input: version1 = "1.0", version2 = "1.0.0"
Output: 0
Explanation: version1 does not specify revision 2, which means it is treated as "0".

Example 3:

Input: version1 = "0.1", version2 = "1.1"
Output: -1
Explanation: version1's revision 0 is "0", while version2's revision 0 is "1". 0 < 1, so version1 < version2.

Constraints:

1 <= version1.length, version2.length <= 500
version1 and version2 only contain digits and '.'.
version1 and version2 are valid version numbers.
All the given revisions in version1 and version2 can be stored in a 32-bit integer.

## Suggested Approach

```mbt nocheck
pub fn compare_version(version1: String, version2: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn compare_version(version1 : String, version2 : String) -> Int {
  let m = version1.length()
  let n = version2.length()
  let mut i = 0
  let mut j = 0
  while i < m || j < n {
    let mut a = 0
    let mut b = 0
    while i < m && version1[i] != '.' {
      a = a * 10 + (version1[i].to_int() - '0'.to_int())
      i = i + 1
    }
    while j < n && version2[j] != '.' {
      b = b * 10 + (version2[j].to_int() - '0'.to_int())
      j = j + 1
    }
    if a != b {
      return if a < b { -1 } else { 1 }
    }
    // Skip the dot
    if i < m {
      i = i + 1
    }
    if j < n {
      j = j + 1
    }
  }
  0
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(compare_version("1.01", "1.001"), 0)
}

test "example 2" {
  assert_eq(compare_version("1.0", "1.0.0"), 0)
}

test "example 3" {
  assert_eq(compare_version("0.1", "1.1"), -1)
}

test "example 4" {
  assert_eq(compare_version("1.0.1", "1"), 1)
}

test "example 5" {
  assert_eq(compare_version("7.5.2.4", "7.5.3"), -1)
}
```
