---
difficulty: Medium
verified: true
---

# Jump Game

You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.
Return true if you can reach the last index, or false otherwise.

Example 1:

Input: nums = [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

Example 2:

Input: nums = [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

Constraints:

1 <= nums.length <= 10^4
0 <= nums[i] <= 10^5

## Suggested Approach

```mbt nocheck
pub fn can_jump(nums: Array[Int]) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn can_jump(nums : Array[Int]) -> Bool {
  let mut mx = 0
  for i = 0; i < nums.length(); i = i + 1 {
    if mx < i {
      return false
    }
    mx = max(mx, i + nums[i])
  }
  true
}

pub fn max(a : Int, b : Int) -> Int {
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
  assert_eq(can_jump([2, 3, 1, 1, 4]), true)
}

test "example 2" {
  assert_eq(can_jump([3, 2, 1, 0, 4]), false)
}

test "example 3" {
  assert_eq(can_jump([0]), true)
}

test "example 4" {
  assert_eq(can_jump([2, 0]), true)
}
```
