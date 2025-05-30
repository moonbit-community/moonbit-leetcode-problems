---
difficulty: Easy
verified: true
---

# Find the Index of the First Occurrence in a String

Given two strings `needle` and `haystack`, return the index of the first occurrence of `needle` in `haystack`, or `-1` if `needle` is not part of `haystack`.

## Examples

### Example 1

Input: `haystack = "sadbutsad", needle = "sad"`
Output: `0`
Explanation: "sad" occurs at index 0 and 6.
The first occurrence is at index 0, so we return 0.

### Example 2

Input: `haystack = "leetcode", needle = "leeto"`
Output: `-1`
Explanation: "leeto" did not occur in "leetcode", so we return -1.

## Constraints

- `1 <= haystack.length, needle.length <= 10^4`
- `haystack` and `needle` consist of only lowercase English characters.

## Suggested Approach

```mbt nocheck
pub fn str_str(haystack: String, needle: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn str_str(haystack : String, needle : String) -> Int {
  let haystack_len = haystack.length()
  let needle_len = needle.length()
  for i = 0; i <= haystack_len - needle_len; i = i + 1 {
    let mut found = true
    for j = 0; j < needle_len; j = j + 1 {
      if haystack[i + j] != needle[j] {
        found = false
        break
      }
    }
    if found {
      return i
    }
  } else {
    return -1
  }
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(str_str("sadbutsad", "sad"), 0)
}

test "example 2" {
  assert_eq(str_str("leetcode", "leeto"), -1)
}
```
