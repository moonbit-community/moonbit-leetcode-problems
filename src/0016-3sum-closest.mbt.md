---
difficulty: Medium
verified: true
---

# 3Sum Closest

Given an integer array `nums` of length `n` and an integer `target`, find three integers in `nums` such that the sum is closest to `target`.

Return _the sum of the three integers_.

You may assume that each input would have exactly one solution.

**Example 1:**

**Input:** nums = \[-1,2,1,-4\], target = 1
**Output:** 2
**Explanation:** The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

**Example 2:**

**Input:** nums = \[0,0,0\], target = 1
**Output:** 0
**Explanation:** The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

**Constraints:**

* `3 <= nums.length <= 500`
* `-1000 <= nums[i] <= 1000`
* `-10^4 <= target <= 10^4`

## Suggested Approach

```mbt nocheck
pub fn three_sum_closest(nums: Array[Int], target: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn three_sum_closest(nums : Array[Int], target : Int) -> Int {
  // Sort the array
  nums.sort()
  let n = nums.length()
  let mut closest_sum = nums[0] + nums[1] + nums[2]
  let mut min_diff = (closest_sum - target).abs()
  for i = 0; i < n - 2; i = i + 1 {
    let mut left = i + 1
    let mut right = n - 1
    while left < right {
      let current_sum = nums[i] + nums[left] + nums[right]
      let current_diff = (current_sum - target).abs()
      if current_diff < min_diff {
        min_diff = current_diff
        closest_sum = current_sum
      }
      if current_sum < target {
        left = left + 1
      } else if current_sum > target {
        right = right - 1
      } else {
        // If the sum is exactly equal to the target, we can return immediately
        return current_sum
      }
    }
  }
  closest_sum
}

// Test cases
```

## Tests

```moonbit
test "example 1" {
  let nums = [-1, 2, 1, -4]
  let target = 1
  assert_eq(three_sum_closest(nums, target), 2)
}

test "example 2" {
  let nums = [0, 0, 0]
  let target = 1
  assert_eq(three_sum_closest(nums, target), 0)
}

test "example 3" {
  let nums = [1, 1, 1, 1]
  let target = -100
  assert_eq(three_sum_closest(nums, target), 3)
}

test "example 4" {
  let nums = [1, 2, 4, 8, 16, 32, 64, 128]
  let target = 82
  assert_eq(three_sum_closest(nums, target), 82)
}
```
