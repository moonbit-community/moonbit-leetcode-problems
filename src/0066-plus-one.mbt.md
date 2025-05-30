---
difficulty: Easy
verified: true
---

# Plus One

You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

## Suggested Approach

```mbt nocheck
pub fn plus_one(digits: Array[Int]) -> Array[Int] {
  ...
}
```

## Solution

```mbt
pub fn plus_one(digits : Array[Int]) -> Array[Int] {
  for i = digits.length() - 1; i >= 0; i = i - 1 {
    if digits[i] < 9 {
      digits[i] = digits[i] + 1
      return digits
    }
    digits[i] = 0
  }
  let new_digits = Array::make(digits.length() + 1, 0)
  new_digits[0] = 1
  new_digits
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(plus_one([1, 2, 3]), [1, 2, 4])
}

test "example 2" {
  assert_eq(plus_one([4, 3, 2, 1]), [4, 3, 2, 2])
}

test "example 3" {
  assert_eq(plus_one([9, 9, 9]), [1, 0, 0, 0])
}
```
