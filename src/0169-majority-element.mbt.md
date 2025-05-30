---
difficulty: Easy
verified: true
---

# Majority Element

Given an array nums of size n, return the majority element.
The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

Example 1:
Input: nums = [3,2,3]
Output: 3
Example 2:
Input: nums = [2,2,1,1,1,2,2]
Output: 2

Constraints:

n == nums.length
1 <= n <= 5 * 10^4
-10^9 <= nums[i] <= 10^9

Follow-up: Could you solve the problem in linear time and in O(1) space?

## Suggested Approach

```mbt nocheck
pub fn majority_element(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn majority_element(nums : Array[Int]) -> Int {
  let mut cnt = 0
  let mut m = 0
  for i = 0; i < nums.length(); i = i + 1 {
    if cnt == 0 {
      m = nums[i]
      cnt = 1
    } else if m == nums[i] {
      cnt = cnt + 1
    } else {
      cnt = cnt - 1
    }
  }
  m
}
```

## Tests

```moonbit
test "majority_element example 1" {
  assert_eq(majority_element([3, 2, 3]), 3)
}

test "majority_element example 2" {
  assert_eq(majority_element([2, 2, 1, 1, 1, 2, 2]), 2)
}
```
