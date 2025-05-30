---
difficulty: Easy
verified: true
---

# Excel Sheet Column Title

Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.
For example:

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28
...

Example 1:

Input: columnNumber = 1
Output: "A"

Example 2:

Input: columnNumber = 28
Output: "AB"

Example 3:

Input: columnNumber = 701
Output: "ZY"

Constraints:

1 <= columnNumber <= 2^31 - 1

## Suggested Approach

```mbt nocheck
pub fn convert_to_title(columnNumber: Int) -> String {
  ...
}
```

## Solution

```mbt
pub fn convert_to_title(column_number : Int) -> String {
  let chars = []
  let mut number = column_number
  while number != 0 {
    let temp_number = number - 1
    let char_code = 65 + temp_number % 26
    // Adjusting the conversion process according to MoonBit's guidelines
    chars.push(char_code.unsafe_to_char())
    number = temp_number / 26
  }
  String::from_iter(chars.rev_iter())
}
```

## Tests

```moonbit
test "example 1" {
  let column_number = 1
  let title = convert_to_title(column_number)
  assert_eq(title, "A")
}

test "example 2" {
  let column_number = 28
  let title = convert_to_title(column_number)
  assert_eq(title, "AB")
}

test "example 3" {
  let column_number = 701
  let title = convert_to_title(column_number)
  assert_eq(title, "ZY")
}
```
