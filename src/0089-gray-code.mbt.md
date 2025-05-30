---
difficulty: Medium
verified: true
---

# Gray Code

An n-bit gray code sequence is a sequence of 2^n integers where:

- Every integer is in the inclusive range `[0, 2^n - 1]`,
- The first integer is 0,
- An integer appears no more than once in the sequence,
- The binary representation of every pair of adjacent integers differs by exactly one bit, and
- The binary representation of the first and last integers differs by exactly one bit.

Given an integer n, return any valid n-bit gray code sequence.

## Suggested Approach

```mbt nocheck
pub fn gray_code(n: Int) -> Array[Int] {
  ...
}
```

## Solution

```mbt
pub fn gray_code(n : Int) -> Array[Int] {
  let ret = Array::make(1 << n, 0)
  for i = 0; i < ret.length(); i = i + 1 {
    ret[i] = (i >> 1) ^ i
  }
  ret
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(gray_code(2), [0, 1, 3, 2])
}

test "example 2" {
  assert_eq(gray_code(1), [0, 1])
}
```
