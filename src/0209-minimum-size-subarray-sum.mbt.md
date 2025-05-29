---
difficulty: Medium
verified: true
---

# Minimum Size Subarray Sum

Given an array of positive integers `nums` and a positive integer `target`,
return _the **minimal length** of a_ _subarray_ _whose sum is greater than or
equal to_ `target`. If there is no such subarray, return `0` instead.

**Example 1:**

**Input:** target = 7, nums = \[2,3,1,2,4,3\]
**Output:** 2
**Explanation:** The subarray \[4,3\] has the minimal length under the problem
constraint.

**Example 2:**

**Input:** target = 4, nums = \[1,4,4\]
**Output:** 1

**Example 3:**

**Input:** target = 11, nums = \[1,1,1,1,1,1,1,1\]
**Output:** 0

**Constraints:**

* `1 <= target <= 10^9`
* `1 <= nums.length <= 10^5`
* `1 <= nums[i] <= 10^4`

**Follow up:** If you have figured out the `O(n)` solution, try coding another
solution of which the time complexity is `O(n log(n))`.

## Suggested Approach

```moonbit nocheck
///|
pub fn min_sub_array_len(target : Int, nums : Array[Int]) -> Int {
  ...
}
```

## Solution

```moonbit
///|
pub fn min_sub_array_len(target : Int, nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut s = 0
  let mut ans = n + 1
  let mut i = 0
  let mut j = 0
  while i < n {
    s = s + nums[i]
    while s >= target {
      ans = min(ans, i - j + 1)
      s = s - nums[j]
      j = j + 1
    }
    i = i + 1
  }
  if ans == n + 1 {
    return 0
  } else {
    return ans
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    return a
  } else {
    return b
  }
}
```

## Tests

```moonbit
///|
test "example 1" {
  let target = 7
  let nums = [2, 3, 1, 2, 4, 3]
  let result = min_sub_array_len(target, nums)
  assert_eq!(result, 2)
}

///|
test "example 2" {
  let target = 4
  let nums = [1, 4, 4]
  let result = min_sub_array_len(target, nums)
  assert_eq!(result, 1)
}

///|
test "example 3" {
  let target = 11
  let nums = [1, 1, 1, 1, 1, 1, 1, 1]
  let result = min_sub_array_len(target, nums)
  assert_eq!(result, 0)
}
```
