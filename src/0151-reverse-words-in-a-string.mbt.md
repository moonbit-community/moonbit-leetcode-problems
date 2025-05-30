---
difficulty: Medium
verified: true
---

# Reverse Words in a String

Given an input string s, reverse the order of the words.
A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.
Return a string of the words in reverse order concatenated by a single space.
Note that s may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

Example 1:

Input: s = "the sky is blue"
Output: "blue is sky the"

Example 2:

Input: s = "  hello world  "
Output: "world hello"
Explanation: Your reversed string should not contain leading or trailing spaces.

Example 3:

Input: s = "a good   example"
Output: "example good a"
Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.

Constraints:

1 <= s.length <= 10^4
s contains English letters (upper-case and lower-case), digits, and spaces ' '.
There is at least one word in s.

Follow-up: If the string data type is mutable in your language, can you solve it in-place with O(1) extra space?

## Suggested Approach

```mbt nocheck
pub fn reverse_words(s: String) -> String {
  ...
}
```

## Solution

```mbt
pub fn split_words(s : String) -> @immut/list.T[String] {
  let mut words : @immut/list.T[String] = Nil
  let mut i = 0
  let n = s.length()
  while i < n {
    while i < n && s[i] == ' ' {
      i = i + 1
    }
    if i < n {
      let mut t = ""
      let mut j = i
      while j < n && s[j] != ' ' {
        t = t + s[j].to_string()
        j = j + 1
      }
      words = words.concat(@immut/list.of([t]))
      i = j
    }
  }
  words
}

pub fn reverse_list(words : @immut/list.T[String]) -> @immut/list.T[String] {
  fn helper(
    list : @immut/list.T[String],
    acc : @immut/list.T[String]
  ) -> @immut/list.T[String] {
    match list {
      Nil => acc
      Cons(x, xs) => helper(xs, Cons(x, acc))
    }
  }

  helper(words, Nil)
}

pub fn join_words(words : @immut/list.T[String], sep : String) -> String {
  match words {
    Nil => ""
    Cons(head, tail) =>
      match tail {
        Nil => head
        _ => head + sep + join_words(tail, sep)
      }
  }
}

pub fn reverse_words(s : String) -> String {
  let words = split_words(s)
  let reversed = reverse_list(words)
  join_words(reversed, " ")
}
```

## Tests

```moonbit
test "example1" {
  let result = reverse_words("the sky is blue")
  let expect = "blue is sky the"
  assert_eq(result, expect)
}

test "example2" {
  let result = reverse_words("  hello world  ")
  let expect = "world hello"
  assert_eq(result, expect)
}

test "example3" {
  let result = reverse_words("a good   example")
  let expect = "example good a"
  assert_eq(result, expect)
}
```
