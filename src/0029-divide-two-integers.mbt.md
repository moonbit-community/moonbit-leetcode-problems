---
difficulty: Medium
verified: true
---

# Divide Two Integers

Given two integers `dividend` and `divisor`, divide two integers **without** using multiplication, division, and mod operator.

The integer division should truncate toward zero, which means losing its fractional part. For example, `8.345` would be truncated to `8`, and `-2.7335` would be truncated to `-2`.

Return _the **quotient** after dividing_ `dividend` _by_ `divisor`.

**Note:** Assume we are dealing with an environment that could only store integers within the **32-bit** signed integer range: `[-2^31, 2^31 - 1]`. For this problem, if the quotient is **strictly greater than** `2^31 - 1`, then return `2^31 - 1`, and if the quotient is **strictly less than** `-2^31`, then return `-2^31`.

## Examples

### Example 1

Input: `dividend = 10, divisor = 3`
Output: 3
Explanation: 10/3 = 3.33333.. which is truncated to 3.

### Example 2

Input: `dividend = 7, divisor = -3`
Output: -2
Explanation: 7/-3 = -2.33333.. which is truncated to -2.

## Constraints

- `-2^31 <= dividend, divisor <= 2^31 - 1`
- `divisor != 0`

## Suggested Approach

```mbt nocheck
pub fn divide(dividend: Int, divisor: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn divide(dividend : Int, divisor : Int) -> Int {
  let is_negative = dividend < 0 != (divisor < 0)
  let mut dividend = dividend.to_int64().abs()
  let divisor = divisor.to_int64().abs()
  let mut total = 0L
  while dividend >= divisor {
    let mut count = 0
    while dividend >= (divisor << (count + 1)) {
      count += 1
    }
    total += 1 << count
    dividend -= divisor << count
  }
  match (if is_negative { -1L } else { 1 }) * total {
    -2147483648..=2147483647 as n => n.to_int()
    n if n < 0 => -2147483648
    _ => 2147483647
  }
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(divide(10, 3), 3)
}

test "example 2" {
  assert_eq(divide(7, -3), -2)
}
```
