---
difficulty: Medium
verified: true
---

# Longest Substring Without Repeating Characters

Given a string `s`, find the length of the **longest** **substring** without repeating characters.

**Example 1:**

**Input:** s =  "abcabcbb "
**Output:** 3
**Explanation:** The answer is  "abc ", with the length of 3.

**Example 2:**

**Input:** s =  "bbbbb "
**Output:** 1
**Explanation:** The answer is  "b ", with the length of 1.

**Example 3:**

**Input:** s =  "pwwkew "
**Output:** 3
**Explanation:** The answer is  "wke ", with the length of 3.
Notice that the answer must be a substring,  "pwke " is a subsequence and not a substring.

**Constraints:**

* `0 <= s.length <= 5 * 10^4`
* `s` consists of English letters, digits, symbols and spaces.

## Suggested Approach

```mbt nocheck
pub fn length_of_longest_substring(s : String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn length_of_longest_substring(s : String) -> Int {
  let mut max_length = 0
  let mut start = 0
  let char_index_map : @hashmap.T[Char, Int] = @hashmap.new()
  for i = 0; i < s.length(); i = i + 1 {
    let current_char = s[i]
    if char_index_map.contains(current_char) {
      let last_seen_index = char_index_map.get(current_char).unwrap()
      if last_seen_index >= start {
        start = last_seen_index + 1
      }
    }
    char_index_map.set(current_char, i)
    let current_length = i - start + 1
    if current_length > max_length {
      max_length = current_length
    }
  }
  max_length
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(length_of_longest_substring("abcabcbb"), 3)
}

test "example 2" {
  assert_eq(length_of_longest_substring("bbbbb"), 1)
}

test "example 3" {
  assert_eq(length_of_longest_substring("pwwkew"), 3)
}

test "empty string" {
  assert_eq(length_of_longest_substring(""), 0)
}

test "unique characters" {
  assert_eq(length_of_longest_substring("abcdef"), 6)
}
```
