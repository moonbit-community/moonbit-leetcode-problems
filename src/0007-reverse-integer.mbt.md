---
difficulty: Medium
verified: true
---

# Reverse Integer

Given a signed 32-bit integer `x`, return `x` _with its digits reversed_. If reversing `x` causes the value to go outside the signed 32-bit integer range `[-2^31, 2^31 - 1]`, then return `0`.

**Assume the environment does not allow you to store 64-bit integers (signed or unsigned).**

**Example 1:**

**Input:** x = 123
**Output:** 321

**Example 2:**

**Input:** x = -123
**Output:** -321

**Example 3:**

**Input:** x = 120
**Output:** 21

**Constraints:**

* `-2^31 <= x <= 2^31 - 1`

## Suggested Approach

```mbt nocheck
pub fn reverse(x: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn reverse(x : Int) -> Int {
  let max_int = @int.max_value
  let is_negative = x < 0
  let mut num = if is_negative { -x } else { x }
  let mut reversed = 0
  while num > 0 {
    let digit = num % 10
    num = num / 10

    // Check for overflow
    if reversed > (max_int - digit) / 10 {
      return 0
    }
    reversed = reversed * 10 + digit
  }
  if is_negative {
    -reversed
  } else {
    reversed
  }
}
```

## Tests

```moonbit
test "reverse_example_1" {
  assert_eq(reverse(123), 321)
}

test "reverse_example_2" {
  assert_eq(reverse(-123), -321)
}

test "reverse_example_3" {
  assert_eq(reverse(120), 21)
}

test "reverse_overflow_positive" {
  assert_eq(reverse(1_534_236_469), 0)
}

test "reverse_overflow_negative" {
  assert_eq(reverse(-1_534_236_469), 0)
}

test "reverse_zero" {
  assert_eq(reverse(0), 0)
}
```
