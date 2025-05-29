---
difficulty: Easy
moonbit: 
  deps:
title: Two Sum
---

# Two Sum

Given an array of integers `nums` and an integer `target`, return _indices of the two numbers such that they add up to `target`_.

You may assume that each input would have **_exactly_ one solution**, and you may not use the _same_ element twice.

You can return the answer in any order.

**Example 1:**

**Input:** nums = \[2,7,11,15\], target = 9
**Output:** \[0,1\]
**Explanation:** Because nums\[0\] + nums\[1\] == 9, we return \[0, 1\].

**Example 2:**

**Input:** nums = \[3,2,4\], target = 6
**Output:** \[1,2\]

**Example 3:**

**Input:** nums = \[3,3\], target = 6
**Output:** \[0,1\]

**Constraints:**

* `2 <= nums.length <= 10^4`
* `-10^9 <= nums[i] <= 10^9`
* `-10^9 <= target <= 10^9`
* **Only one valid answer exists.**

**Follow-up:** Can you come up with an algorithm that is less than `O(n2)` time complexity?

# Suggested Approach

```mbt nocheck
pub fn twoSum(nums : Array[Int], target : Int) -> Array[Int] {
  ...
}
```

# Solution

```mbt
pub fn twoSum(nums : Array[Int], target : Int) -> Array[Int] {
  let num_to_index : @hashmap.T[Int, Int] = @hashmap.new()
  for i = 0; i < nums.length(); i = i + 1 {
    let current_num = nums[i]
    let complement = target - current_num
    if num_to_index.contains(complement) {
      return [num_to_index.get(complement).or(-1), i]
    }
    num_to_index.set(current_num, i)
  }
  return []
}
```

# Tests

```moonbit
///
test "example 1" {
  let nums = [2, 7, 11, 15]
  let target = 9
  assert_eq(twoSum(nums, target), [0, 1])
}

///
test "example 2" {
  let nums = [3, 2, 4]
  let target = 6
  assert_eq(twoSum(nums, target), [1, 2])
}

///
test "example 3" {
  let nums = [3, 3]
  let target = 6
  assert_eq(twoSum(nums, target), [0, 1])
}
```