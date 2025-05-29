---
difficulty: Medium
verified: true
---

# Letter Combinations of a Phone Number

Given a string containing digits from `2-9` inclusive, return all possible letter combinations that the number could represent. Return the answer in **any order**.

A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

**Example 1:**

**Input:** digits =  "23 "
**Output:** \[ "ad ", "ae ", "af ", "bd ", "be ", "bf ", "cd ", "ce ", "cf "\]

**Example 2:**

**Input:** digits =  " "
**Output:** \[\]

**Example 3:**

**Input:** digits =  "2 "
**Output:** \[ "a ", "b ", "c "\]

**Constraints:**

* `0 <= digits.length <= 4`
* `digits[i]` is a digit in the range `['2', '9']`.

## Suggested Approach

```mbt nocheck
pub fn letter_combinations(digits: String) -> Array[String] {
  ...
}
```

## Solution

```mbt
pub fn letter_combinations(digits : String) -> Array[String] {
  if digits.length() == 0 {
    return Array::new()
  }
  let digit_to_letters : Map[Char, Array[Char]] = {
    '2': ['a', 'b', 'c'],
    '3': ['d', 'e', 'f'],
    '4': ['g', 'h', 'i'],
    '5': ['j', 'k', 'l'],
    '6': ['m', 'n', 'o'],
    '7': ['p', 'q', 'r', 's'],
    '8': ['t', 'u', 'v'],
    '9': ['w', 'x', 'y', 'z'],
  }
  let result : Array[String] = Array::new()
  backtrack("", digits, 0, digit_to_letters, result)
  result
}

pub fn backtrack(
  current : String,
  digits : String,
  index : Int,
  digit_to_letters : Map[Char, Array[Char]],
  result : Array[String]
) -> Unit {
  if index == digits.length() {
    result.push(current)
    return
  }
  let current_digit = digits[index]
  let letters = digit_to_letters.get(current_digit).or(Array::new())
  for i = 0; i < letters.length(); i = i + 1 {
    let letter = letters[i]
    backtrack(
      current + letter.to_string(),
      digits,
      index + 1,
      digit_to_letters,
      result,
    )
  }
}
```

## Tests

```moonbit
test "example 1" {
  let digits = "23"
  let expected = ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
  assert_eq(letter_combinations(digits), expected)
}

test "example 2" {
  let digits = ""
  let expected = Array::new()
  assert_eq(letter_combinations(digits), expected)
}

test "example 3" {
  let digits = "2"
  let expected = ["a", "b", "c"]
  assert_eq(letter_combinations(digits), expected)
}
```
