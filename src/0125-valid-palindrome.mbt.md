---
difficulty: Easy
verified: true
---

# Valid Palindrome

A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
Given a string s, return true if it is a palindrome, or false otherwise.

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.

Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.

Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.

Constraints:

1 <= s.length <= 2 * 10^5
s consists only of printable ASCII characters.

## Suggested Approach

```mbt nocheck
pub fn is_palindrome(s: String) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn is_letter_or_digit(c : Char) -> Bool {
  match c {
    'a' => true
    'b' => true
    'c' => true
    'd' => true
    'e' => true
    'f' => true
    'g' => true
    'h' => true
    'i' => true
    'j' => true
    'k' => true
    'l' => true
    'm' => true
    'n' => true
    'o' => true
    'p' => true
    'q' => true
    'r' => true
    's' => true
    't' => true
    'u' => true
    'v' => true
    'w' => true
    'x' => true
    'y' => true
    'z' => true
    'A' => true
    'B' => true
    'C' => true
    'D' => true
    'E' => true
    'F' => true
    'G' => true
    'H' => true
    'I' => true
    'J' => true
    'K' => true
    'L' => true
    'M' => true
    'N' => true
    'O' => true
    'P' => true
    'Q' => true
    'R' => true
    'S' => true
    'T' => true
    'U' => true
    'V' => true
    'W' => true
    'X' => true
    'Y' => true
    'Z' => true
    '0' => true
    '1' => true
    '2' => true
    '3' => true
    '4' => true
    '5' => true
    '6' => true
    '7' => true
    '8' => true
    '9' => true
    _ => false
  }
}

pub fn to_lower_case(c : Char) -> Char {
  match c {
    'A' => 'a'
    'B' => 'b'
    'C' => 'c'
    'D' => 'd'
    'E' => 'e'
    'F' => 'f'
    'G' => 'g'
    'H' => 'h'
    'I' => 'i'
    'J' => 'j'
    'K' => 'k'
    'L' => 'l'
    'M' => 'm'
    'N' => 'n'
    'O' => 'o'
    'P' => 'p'
    'Q' => 'q'
    'R' => 'r'
    'S' => 's'
    'T' => 't'
    'U' => 'u'
    'V' => 'v'
    'W' => 'w'
    'X' => 'x'
    'Y' => 'y'
    'Z' => 'z'
    _ => c
  }
}

pub fn is_palindrome(s : String) -> Bool {
  let mut i = 0
  let length = s.length()
  let mut j = length - 1
  while i < j {
    let ci = s[i]
    let cj = s[j]
    if not(is_letter_or_digit(ci)) {
      i = i + 1
      continue
    }
    if not(is_letter_or_digit(cj)) {
      j = j - 1
      continue
    }
    if to_lower_case(ci) != to_lower_case(cj) {
      return false
    }
    i = i + 1
    j = j - 1
  }
  true
}
```

## Tests

```moonbit
test "example 1" {
  let result = is_palindrome("A man, a plan, a canal: Panama")
  @test.is_true!(result)
}

test "example 2" {
  let result = is_palindrome("  ")
  @test.is_true!(result)
}

test "example 3" {
  let result = is_palindrome("TEST")
  @test.is_false!(result)
}
```
