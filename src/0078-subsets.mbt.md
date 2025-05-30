---
difficulty: Medium
verified: true
---

# Subsets

Given an integer array `nums` of unique elements, return all possible
subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in any order.

## Suggested Approach

```mbt nocheck
pub fn subsets(nums: Array[Int]) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn subsets(nums : Array[Int]) -> Array[Array[Int]] {
  let t : Array[Int] = []
  let ans : Array[Array[Int]] = []
  let n = nums.length()
  for mask = 0; mask < (1 << n); mask = mask + 1 {
    t.clear()
    for i = 0; i < n; i = i + 1 {
      let cur = 1 << i
      if (mask & cur) > 0 {
        t.push(nums[i])
      }
    }
    // make a copy
    let t_clone = Array::copy(t)
    ans.push(t_clone)
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  inspect!(
    subsets([1, 2, 3]),
    content="[[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]",
  )
}

test "example 2" {
  inspect!(subsets([0]), content="[[], [0]]")
}
```
