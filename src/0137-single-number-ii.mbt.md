---
difficulty: Medium
verified: true
---

# Single Number II

Given an integer array nums where every element appears three times except for one, which appears exactly once. Find the single element and return it.

You must implement a solution with a linear runtime complexity and use only constant extra space.

## Suggested Approach

```mbt nocheck
pub fn single_number(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn single_number(nums : Array[Int]) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < 32 {
    let mut count = 0
    let mut j = 0
    while j < nums.length() {
      count = count + ((nums[j] >> i) & 1)
      j = j + 1
    }
    ans = ans | ((count % 3) << i)
    i = i + 1
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  let nums = [2, 2, 3, 2]
  let result = single_number(nums)
  assert_eq(result, 3)
}

test "example 2" {
  let nums = [0, 1, 0, 1, 0, 1, 99]
  let result = single_number(nums)
  assert_eq(result, 99)
}

test "example 3" {
  let nums = [3, 3, 3, 2]
  let result = single_number(nums)
  assert_eq(result, 2)
}
```
