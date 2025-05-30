---
difficulty: Medium
verified: true
---

# Multiply Strings

Given two non-negative integers `num1` and `num2` represented as strings, return the product of `num1` and `num2`, also represented as a string.
Note: You must not use any built-in `BigInteger` library or convert the inputs to integer directly.

Example 1:
Input: num1 = "2", num2 = "3"
Output: "6"
Example 2:
Input: num1 = "123", num2 = "456"
Output: "56088"

Constraints:

- `1 <= num1.length, num2.length <= 200`
- `num1` and `num2` consist of digits only.
- Both `num1` and `num2` do not contain any leading zero, except the number 0 itself.

## Suggested Approach

```mbt nocheck
pub fn multiply(num1: String, num2: String) -> String {
  ...
}
```

## Solution

```mbt
pub fn multiply(num1 : String, num2 : String) -> String {
  if num1 == "0" || num2 == "0" {
    return "0"
  }
  let m = num1.length()
  let n = num2.length()
  let arr : Array[Int] = Array::make(m + n, 0)
  for i = m - 1; i >= 0; i = i - 1 {
    let a = num1[i].to_int() - '0'.to_int()
    for j = n - 1; j >= 0; j = j - 1 {
      let b = num2[j].to_int() - '0'.to_int()
      arr[i + j + 1] = arr[i + j + 1] + a * b
    }
  }
  for i = arr.length() - 1; i > 0; i = i - 1 {
    arr[i - 1] = arr[i - 1] + arr[i] / 10
    arr[i] = arr[i] % 10
  }
  let mut i = if arr[0] == 0 { 1 } else { 0 }
  let mut ans = ""
  while i < arr.length() {
    ans = ans + arr[i].to_string()
    i = i + 1
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(multiply("2", "3"), "6")
}

test "example 2" {
  assert_eq(multiply("123", "456"), "56088")
}

test "example 3" {
  assert_eq(multiply("0", "123456789"), "0")
}
```
