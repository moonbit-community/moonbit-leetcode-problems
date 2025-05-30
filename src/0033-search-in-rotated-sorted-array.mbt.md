---
difficulty: Medium
verified: true
---

# Search in Rotated Sorted Array

There is an integer array `nums` sorted in ascending order (with **distinct** values).

Prior to being passed to your function, `nums` is **possibly rotated** at an unknown pivot index `k` (`1 <= k < nums.length`) such that the resulting array is `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]` (**0-indexed**). For example, `[0, 1, 2, 4, 5, 6, 7]` might be rotated at pivot index `3` and become `[4, 5, 6, 7, 0, 1, 2]`.

Given the array `nums` **after** the possible rotation and an integer `target`, return _the index of_ `target` _if it is in_ `nums`_, or_ `-1` _if it is not in_ `nums`.

You must write an algorithm with `O(log n)` runtime complexity.

## Examples

### Example 1

Input: `nums = [4, 5, 6, 7, 0, 1, 2]`, target = `0`
Output: `4`

### Example 2

Input: `nums = [4, 5, 6, 7, 0, 1, 2]`, target = `3`
Output: `-1`

### Example 3

Input: `nums = [1]`, target = `0`
Output: `-1`

## Constraints

- `1 <= nums.length <= 5000`
- `-10^4 <= nums[i] <= 10^4`
- All values of `nums` are **unique**.
- `nums` is an ascending array that is possibly rotated.
- `-10^4 <= target <= 10^4`

## Suggested Approach

```mbt nocheck
pub fn search(nums: Array[Int], target: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn search(nums : Array[Int], target : Int) -> Int {
  let n = nums.length()
  let mut left = 0
  let mut right = n - 1
  while left <= right {
    let mid = (left + right) / 2
    let mid_val = nums[mid]
    if mid_val == target {
      return mid
    }
    if nums[left] <= mid_val {
      if nums[left] <= target && target < mid_val {
        right = mid - 1
      } else {
        left = mid + 1
      }
    } else if mid_val < target && target <= nums[right] {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  -1
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(search([5, 1, 3], 5), 0)
}

test "example 2" {
  assert_eq(search([1], 0), -1)
}

test "example 3" {
  assert_eq(search([4, 5, 6, 7, 8, 1, 2, 3], 8), 4)
}
```
