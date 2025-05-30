---
difficulty: Medium
verified: true
---

# Count and Say

The count-and-say sequence is a sequence of digit strings defined by the recursive formula:

countAndSay(1) = "1"
countAndSay(n) is the way you would "say" the digit string from countAndSay(n-1), which is then converted into a different digit string.
To determine how you "say" a digit string, split it into the minimal number of substrings such that each substring contains exactly one unique digit. Then for each substring, say the number of digits, then say the digit. Finally, concatenate every said digit.

Given a positive integer n, return the nth term of the count-and-say sequence.

## Suggested Approach

```mbt nocheck
pub fn count_and_say(n: Int) -> String {
  ...
}
```

## Solution

```mbt
pub fn count_and_say(n : Int) -> String {
  let mut str = "1"
  for i = 2; i <= n; i = i + 1 {
    let mut sb = ""
    let mut start = 0
    let mut pos = 0
    while pos < str.length() {
      while pos < str.length() && str[pos] == str[start] {
        pos += 1
      }
      sb += (pos - start).to_string()
      sb += str[start].to_string()
      start = pos
    }
    str = sb
  }
  str
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(count_and_say(1), "1")
}

test "example 2" {
  assert_eq(count_and_say(4), "1211")
}
```
