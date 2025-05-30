---
difficulty: Medium
verified: true
---

# Maximum Subarray

Given an integer array nums, find the subarray with the largest sum, and return its sum.

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.

Example 2:

Input: nums = [1]
Output: 1
Explanation: The subarray [1] has the largest sum 1.

Example 3:

Input: nums = [5,4,-1,7,8]
Output: 23
Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

Constraints:

- `1 <= nums.length <= 10^5`
- `-10^4 <= nums[i] <= 10^4`

Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

## Suggested Approach

```mbt nocheck
pub fn max_sub_array(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn max_sub_array(nums : Array[Int]) -> Int {
  let mut ans = nums[0]
  let mut f = nums[0]
  let mut i = 1
  while i < nums.length() {
    f = max_sub_array_int(f, 0) + nums[i]
    ans = max_sub_array_int(ans, f)
    i = i + 1
  }
  ans
}

pub fn max_sub_array_int(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
}

test "example 2" {
  assert_eq(max_sub_array([1]), 1)
}

test "example 3" {
  assert_eq(max_sub_array([5, 4, -1, 7, 8]), 23)
}
```
