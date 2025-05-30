---
difficulty: Medium
verified: true
---

# Find First and Last Position of Element in Sorted Array

Given an array of integers `nums` sorted in non-decreasing order, find the starting and ending position of a given `target` value.

If `target` is not found in the array, return `[-1, -1]`.

You must write an algorithm with `O(log n)` runtime complexity.

## Examples

### Example 1

Input: `nums = [5, 7,7, 8,8, 10], target = 8`
Output: [3, 4]

### Example 2

Input: `nums = [5, 7,7, 8,8, 10], target = 6
Output: [-1,-1]

### Example 3

Input: `nums = [], target = 0`
Output: [-1,-1]

## Constraints

- `0 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`
- `nums` is a non-decreasing array.
- `-10^9 <= target <= 10^9`

## Suggested Approach

```mbt nocheck
pub fn search_range(nums: Array[Int], target: Int) -> Array[Int] {
  ...
}
```

## Solution

```mbt
pub fn search_range(nums : Array[Int], target : Int) -> Array[Int] {
  let n = nums.length()
  let mut left = 0
  let mut right = n - 1
  let mut start = -1
  let mut end = -1

  // Binary search to find the leftmost position of the target
  while left <= right {
    let mid = (left + right) / 2
    if nums[mid] >= target {
      right = mid - 1
    } else {
      left = mid + 1
    }
    if nums[mid] == target {
      start = mid
    }
  }

  // Binary search to find the rightmost position of the target
  left = 0
  right = n - 1
  while left <= right {
    let mid = (left + right) / 2
    if nums[mid] <= target {
      left = mid + 1
    } else {
      right = mid - 1
    }
    if nums[mid] == target {
      end = mid
    }
  }
  [start, end]
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(search_range([5, 7, 7, 8, 8, 10], 8), [3, 4])
}

test "example 2" {
  assert_eq(search_range([5, 7, 7, 8, 8, 10], 8), [3, 4])
}
```
