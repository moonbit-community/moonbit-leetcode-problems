---
difficulty: Easy
verified: true
---

# Palindrome Number

Given an integer `x`, return `true` _if_ `x` _is a_ _**palindrome**__, and_ `false` _otherwise_.

**Example 1:**

**Input:** x = 121
**Output:** true
**Explanation:** 121 reads as 121 from left to right and from right to left.

**Example 2:**

**Input:** x = -121
**Output:** false
**Explanation:** From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

**Example 3:**

**Input:** x = 10
**Output:** false
**Explanation:** Reads 01 from right to left. Therefore it is not a palindrome.

**Constraints:**

* `-2^31 <= x <= 2^31 - 1`

**Follow up:** Could you solve it without converting the integer to a string?

## Suggested Approach

```mbt nocheck
pub fn is_palindrome(x: Int) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn is_palindrome(x : Int) -> Bool {
  if x < 0 {
    return false
  }
  let original = x
  let mut reversed = 0
  let mut num = x
  while num > 0 {
    let digit = num % 10
    reversed = reversed * 10 + digit
    num = num / 10
  }
  return original == reversed
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(is_palindrome(121), true)
}

test "example 2" {
  assert_eq(is_palindrome(-121), false)
}

test "example 3" {
  assert_eq(is_palindrome(10), false)
}

test "example 4" {
  assert_eq(is_palindrome(12321), true)
}

test "example 5" {
  assert_eq(is_palindrome(12345), false)
}
```
