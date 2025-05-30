---
difficulty: Easy
verified: true
---

# Longest Common Prefix

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string `" "`.

**Example 1:**

**Input:** strs = \[ "flower ", "flow ", "flight "\]
**Output:**  "fl "

**Example 2:**

**Input:** strs = \[ "dog ", "racecar ", "car "\]
**Output:**  " "
**Explanation:** There is no common prefix among the input strings.

**Constraints:**

* `1 <= strs.length <= 200`
* `0 <= strs[i].length <= 200`
* `strs[i]` consists of only lowercase English letters.

## Suggested Approach

```mbt nocheck
pub fn longest_common_prefix(strs: Array[String]) -> String {
  ...
}
```

## Solution

```mbt
pub fn longest_common_prefix(strs : Array[String]) -> String {
  if strs.length() == 0 {
    return ""
  }
  let mut prefix = strs[0]
  for i = 1; i < strs.length(); i = i + 1 {
    while not(strs[i].starts_with(prefix)) {
      prefix = prefix.substring(start=0, end=prefix.length() - 1)
      if prefix.length() == 0 {
        return ""
      }
    }
  }
  prefix
}
```

## Tests

```moonbit
test "example 1" {
  let strs = Array::make(3, "")
  strs[0] = "flower"
  strs[1] = "flow"
  strs[2] = "flight"
  assert_eq(longest_common_prefix(strs), "fl")
}

test "example 2" {
  let strs = Array::make(3, "")
  strs[0] = "dog"
  strs[1] = "racecar"
  strs[2] = "car"
  assert_eq(longest_common_prefix(strs), "")
}

test "empty array" {
  let strs = Array::make(0, "")
  assert_eq(longest_common_prefix(strs), "")
}

test "single element array" {
  let strs = Array::make(1, "")
  strs[0] = "moonbit"
  assert_eq(longest_common_prefix(strs), "moonbit")
}

test "all elements same" {
  let strs = Array::make(3, "")
  strs[0] = "moon"
  strs[1] = "moon"
  strs[2] = "moon"
  assert_eq(longest_common_prefix(strs), "moon")
}
```
