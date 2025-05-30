---
difficulty: Easy
verified: true
---

# Sqrt(x)

Given a non-negative integer `x`, return the square root of `x` rounded down to the nearest integer. The returned integer should be non-negative as well.

You must not use any built-in exponent function or operator.

## Suggested Approach

```mbt nocheck
pub fn my_sqrt(x: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn my_sqrt(x : Int) -> Int {
  if x == 0 {
    return 0
  }
  let s = x
  let ans = my_sqrt_newtwon(x.to_double(), s.to_double())
  ans.to_int()
}

pub fn my_sqrt_newtwon(x : Double, s : Double) -> Double {
  let res = (x + s / x) / 2.0
  if res == x {
    return x
  } else {
    my_sqrt_newtwon(res, s)
  }
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(my_sqrt(4), 2)
}

test "example 2" {
  assert_eq(my_sqrt(8), 2)
}
```
