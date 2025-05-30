---
difficulty: Medium
verified: true
---

# Sort Colors

Given an array `nums` with `n` objects colored red, white, or blue, sort them **in-place** so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

You must solve this problem without using the library's sort function.

## Suggested Approach

```mbt nocheck
pub fn sort_colors(nums: Array[Int]) -> Unit {
  ...
}
```

## Solution

```mbt
pub fn sort_colors(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let mut ptr = 0
  for i = 0; i < n; i = i + 1 {
    if nums[i] == 0 {
      swap(nums, i, ptr)
      ptr += 1
    }
  }
  for i = ptr; i < n; i = i + 1 {
    if nums[i] == 1 {
      swap(nums, i, ptr)
      ptr += 1
    }
  }
  nums
}

pub fn swap(nums : Array[Int], i : Int, j : Int) -> Unit {
  let temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(sort_colors([2, 0, 2, 1, 1, 0]), [0, 0, 1, 1, 2, 2])
}

test "example 2" {
  assert_eq(sort_colors([2, 0, 1]), [0, 1, 2])
}
```
