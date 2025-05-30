---
difficulty: Easy
verified: true
---

# Length of Last Word

Given a string s consisting of words and spaces, return the length of the last word in the string.

A word is a maximal substring consisting of non-space characters only.

Example 1:

Input: s = "Hello World"
Output: 5
Explanation: The last word is "World" with length 5.

Example 2:

Input: s = "   fly me   to   the moon  "
Output: 4
Explanation: The last word is "moon" with length 4.

Example 3:

Input: s = "luffy is still joyboy"
Output: 6
Explanation: The last word is "joyboy" with length 6.

Constraints:

- `1 <= s.length <= 10^4`
- `s` consists of only English letters and spaces `' '`.
- There will be at least one word in `s`.

## Suggested Approach

```mbt nocheck
pub fn length_of_last_word(s: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn length_of_last_word(s : String) -> Int {
  let s_len = s.length()
  let mut i = s_len - 1
  while i >= 0 && s[i] == ' ' {
    i = i - 1
  }
  let mut j = i
  while j >= 0 && s[j] != ' ' {
    j = j - 1
  }
  i - j
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(length_of_last_word("Hello World"), 5)
}

test "example 2" {
  assert_eq(length_of_last_word("   fly me   to   the moon  "), 4)
}

test "example 3" {
  assert_eq(length_of_last_word("luffy is still joyboy"), 6)
}
```
