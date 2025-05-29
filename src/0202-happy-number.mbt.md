---
difficulty: Easy
verified: true
---

# Happy Number

Write an algorithm to determine if a number `n` is happy.

A **happy number** is a number defined by the following process:

* Starting with any positive integer, replace the number by the sum of the
  squares of its digits.
* Repeat the process until the number equals 1 (where it will stay), or it
  **loops endlessly in a cycle** which does not include 1.
* Those numbers for which this process **ends in 1** are happy.

Return `true` _if_ `n` _is a happy number, and_ `false` _if not_.

**Example 1:**

**Input:** n = 19
**Output:** true
**Explanation:**
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1

**Example 2:**

**Input:** n = 2
**Output:** false

**Constraints:**

* `1 <= n <= 2^31 - 1`

## Suggested Approach

```moonbit nocheck
///|
pub fn is_happy(n: Int) -> Bool {
  ...
}
```

## Solution

```moonbit
///|
fn get_next(n : Int) -> Int {
  for num = n, res = 0
      num != 0
      num = num / 10, res = res + num % 10 * (num % 10) {

  } else {
    res
  }
}

///|
pub fn is_happy(n : Int) -> Bool {
  let mut slow = n
  let mut fast = get_next(n)
  while slow != fast {
    slow = get_next(slow)
    fast = get_next(get_next(fast))
  }
  fast == 1
}
```

## Tests

```moonbit
///|
test "example 1" {
  assert_eq!(is_happy(19), true)
}

///|
test "example 2" {
  assert_eq!(is_happy(2), false)
}
```
