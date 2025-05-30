---
difficulty: Medium
verified: true
---

# Zigzag Conversion

The string `"PAYPALISHIRING "` is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R

And then read line by line: `"PAHNAPLSIIGYIR "`

Write the code that will take a string and make this conversion given a number of rows:

string convert(string s, int numRows);

**Example 1:**

**Input:** s =  "PAYPALISHIRING ", numRows = 3
**Output:**  "PAHNAPLSIIGYIR "

**Example 2:**

**Input:** s =  "PAYPALISHIRING ", numRows = 4
**Output:**  "PINALSIGYAHRPI "
**Explanation:**
P     I    N
A   L S  I G
Y A   H R
P     I

**Example 3:**

**Input:** s =  "A ", numRows = 1
**Output:**  "A "

**Constraints:**

* `1 <= s.length <= 1000`
* `s` consists of English letters (lower-case and upper-case), `','` and `'.'`.
* `1 <= numRows <= 1000`

## Suggested Approach

```mbt nocheck
pub fn convert(s: String, numRows: Int) -> String {
  ...
}
```

## Solution

```mbt
pub fn convert(s : String, num_rows : Int) -> String {
  if num_rows == 1 {
    return s
  }
  let rows : Array[String] = Array::make(num_rows, "")
  let mut current_row = 0
  let mut going_down = false
  for i = 0; i < s.length(); i = i + 1 {
    rows[current_row] = rows[current_row] + s[i].to_string()
    if current_row == 0 || current_row == num_rows - 1 {
      going_down = not(going_down)
    }
    if going_down {
      current_row = current_row + 1
    } else {
      current_row = current_row - 1
    }
  }
  let mut result = ""
  for i = 0; i < num_rows; i = i + 1 {
    result = result + rows[i]
  }
  result
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
}

test "example 2" {
  assert_eq(convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
}

test "example 3" {
  assert_eq(convert("A", 1), "A")
}
```
