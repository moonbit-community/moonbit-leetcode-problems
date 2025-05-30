---
difficulty: Medium
verified: true
---

# Factorial Trailing Zeroes

Given an integer n, return the number of trailing zeroes in n!.
Note that n! = n *(n - 1)* (n - 2) *...* 3 *2* 1.

Example 1:

Input: n = 3
Output: 0
Explanation: 3! = 6, no trailing zero.

Example 2:

Input: n = 5
Output: 1
Explanation: 5! = 120, one trailing zero.

Example 3:

Input: n = 0
Output: 0

Constraints:

0 <= n <= 10^4

Follow up: Could you write a solution that works in logarithmic time complexity?

## Suggested Approach

```mbt nocheck
pub fn trailing_zeroes(n: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn trailing_zeroes(n : Int) -> Int {
  let mut ans = 0
  let mut n = n
  while n > 0 {
    n = n / 5
    ans = ans + n
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(trailing_zeroes(3), 0)
}

test "example 2" {
  assert_eq(trailing_zeroes(5), 1)
}

test "example 3" {
  assert_eq(trailing_zeroes(10), 2)
}
```
