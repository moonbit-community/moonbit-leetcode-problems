---
difficulty: Medium
verified: true
---

# Pow(x, n)

Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

Example 1:

Input: x = 2.00000, n = 10
Output: 1024.00000

Example 2:

Input: x = 2.10000, n = 3
Output: 9.26100

Example 3:

Input: x = 2.00000, n = -2
Output: 0.25000
Explanation: 2-2 = 1/22 = 1/4 = 0.25

Constraints:

- `-100.0 < x < 100.0`
- `-2^31 <= n <= 2^31-1`
- `n` is an integer.
- Either `x` is not zero or `n > 0`.
- `-10^4 <= xn <= 10^4`

## Suggested Approach

```mbt nocheck
pub fn my_pow(x: Double, n: Int) -> Double {
  ...
}
```

## Solution

```mbt
pub fn my_pow(x : Double, n : Int) -> Double {
  if n >= 0 {
    qpow(x, n)
  } else {
    1.0 / qpow(x, -n)
  }
}

pub fn qpow(a : Double, n : Int) -> Double {
  let mut ans = 1.0
  for i = n, p = a; i > 0; i = i / 2, p = p * p {
    if i % 2 == 1 {
      ans = ans * p
    }
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eps!(my_pow(2.0, 10), 1024.0)
}

test "example 2" {
  assert_eps!(my_pow(2.1, 3), 9.261)
}

test "example 3" {
  assert_eps!(my_pow(2.0, -2), 0.25)
}

// custom assertion function
fn assert_eps(result : Double, expect : Double) -> Unit! {
  let delta = result - expect
  if (delta < 1.0e-6 && delta >= 0.0) || (delta < 0.0 && delta > -1.0e-6) {
    ()
  } else {
    fail!("Assertion failed: \{result}, expecting \{expect}")
  }
}
```
