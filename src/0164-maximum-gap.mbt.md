---
difficulty: Hard
verified: true
---

# Maximum Gap

Given an integer array nums, return the maximum difference between two successive elements in its sorted form. If the array contains less than two elements, return 0.
You must write an algorithm that runs in linear time and uses linear extra space.

Example 1:

Input: nums = [3,6,9,1]
Output: 3
Explanation: The sorted form of the array is [1,3,6,9], either (3,6) or (6,9) has the maximum difference 3.

Example 2:

Input: nums = [10]
Output: 0
Explanation: The array contains less than 2 elements, therefore return 0.

Constraints:

1 <= nums.length <= 10^5
0 <= nums[i] <= 10^9

## Suggested Approach

```mbt nocheck
pub fn maximum_gap(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
fnalias @math.(maximum as max, minimum as min)

pub fn maximum_gap(nums : Array[Int]) -> Int {
  let n = nums.length()
  if n < 2 {
    return 0
  }
  let inf = 2139062143 // equivalent to 0x3f3f3f3f
  let mut mi = inf
  let mut mx = -inf
  for i = 0; i < n; i = i + 1 {
    mi = min(mi, nums[i])
    mx = max(mx, nums[i])
  }
  let bucket_size = max(1, (mx - mi) / (n - 1))
  let bucket_count = (mx - mi) / bucket_size + 1
  let buckets : Array[Array[Int]] = Array::makei(bucket_count, fn(_) {
    [inf, -inf]
  })
  for i = 0; i < n; i = i + 1 {
    let idx = (nums[i] - mi) / bucket_size
    buckets[idx][0] = min(buckets[idx][0], nums[i])
    buckets[idx][1] = max(buckets[idx][1], nums[i])
  }
  let mut prev = inf
  let mut ans = 0
  for i = 0; i < bucket_count; i = i + 1 {
    if buckets[i][0] > buckets[i][1] {
      continue
    }
    ans = max(ans, buckets[i][0] - prev)
    prev = buckets[i][1]
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  let nums : Array[Int] = [3, 6, 9, 1]
  assert_eq(maximum_gap(nums), 3)
}

test "example 2" {
  let nums : Array[Int] = [10]
  assert_eq(maximum_gap(nums), 0)
}
```
