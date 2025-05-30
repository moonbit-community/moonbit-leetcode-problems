---
difficulty: Hard
verified: true
---

# First Missing Positive

Given an unsorted integer array nums, return the smallest missing positive integer.

You must implement an algorithm that runs in O(n) time and uses O(1) auxiliary space.

## Suggested Approach

```mbt nocheck
pub fn first_missing_positive(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn first_missing_positive(nums : Array[Int]) -> Int {
  let n = nums.length()
  let new_nums = nums.map(fn(num) {
    let mut new_num = num
    if num <= 0 {
      new_num = n + 1
    }
    new_num
  })
  for i = 0; i < n; i = i + 1 {
    let num = new_nums[i].abs()
    if num <= n {
      new_nums[num - 1] = -new_nums[num - 1].abs()
    }
  }
  for i = 0; i < n; i = i + 1 {
    if new_nums[i] > 0 {
      return i + 1
    }
  }
  n + 1
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(first_missing_positive([3, 4, -1, 1]), 2)
}

test "example 1" {
  assert_eq(first_missing_positive([1, 2, 0]), 3)
}

test "example 1" {
  assert_eq(first_missing_positive([7, 8, 9, 11, 12]), 1)
}
```
