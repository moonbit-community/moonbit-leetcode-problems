---
difficulty: Medium
verified: true
---

# Longest Consecutive Sequence

Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
You must write an algorithm that runs in O(n) time.

Example 1:

Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

Example 2:

Input: nums = [0,3,7,2,5,8,4,6,0,1]
Output: 9

Constraints:

0 <= nums.length <= 10^5
-10^9 <= nums[i] <= 10^9

## Suggested Approach

```mbt nocheck
pub fn longest_consecutive(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn longest_consecutive(nums : Array[Int]) -> Int {
  let n = nums.length()
  if n < 2 {
    return n
  }
  nums.sort()
  let mut ans = 1
  let mut t = 1
  for i = 1; i < n; i = i + 1 {
    if nums[i] == nums[i - 1] {
      continue
    }
    if nums[i] == nums[i - 1] + 1 {
      t = t + 1
      if t > ans {
        ans = t
      }
    } else {
      t = 1
    }
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(longest_consecutive([100, 4, 200, 1, 3, 2]), 4)
}

test "example 2" {
  assert_eq(longest_consecutive([0, -1]), 2)
}

test "example 3" {
  assert_eq(longest_consecutive([9, 1, 4, 7, 3, -1, 0, 5, 8, -1, 6]), 7)
}
```
