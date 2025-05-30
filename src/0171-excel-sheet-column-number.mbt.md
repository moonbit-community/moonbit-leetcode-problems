---
difficulty: Easy
verified: true
---

# Excel Sheet Column Number

Given a string columnTitle that represents the column title as appears in an Excel sheet, return its corresponding column number.
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

Input: columnTitle = "A"
Output: 1

Example 2:

Input: columnTitle = "AB"
Output: 28

Example 3:

Input: columnTitle = "ZY"
Output: 701

Constraints:

1 <= columnTitle.length <= 7
columnTitle consists only of uppercase English letters.
columnTitle is in the range ["A", "FXSHRXW"].

## Suggested Approach

```mbt nocheck
pub fn title_to_number(columnTitle: String) -> Int {
  ...
}
```

## Solution

```mbt
pub fn title_to_number(column_title : String) -> Int {
  let mut res = 0
  for i = 0; i < column_title.length(); i = i + 1 {
    let c = column_title[i]
    res = res * 26 + (c.to_int() - 'A'.to_int() + 1)
  }
  res
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(title_to_number("A"), 1)
}

test "example 2" {
  assert_eq(title_to_number("AB"), 28)
}

test "example 3" {
  assert_eq(title_to_number("ZY"), 701)
}
```
