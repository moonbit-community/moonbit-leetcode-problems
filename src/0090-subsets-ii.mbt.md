---
difficulty: Medium
verified: true
---

# Subsets II

Given an integer array nums that may contain duplicates, return all possible
subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in any order.

## Suggested Approach

```mbt nocheck
pub fn subsets_with_dup(nums: Array[Int]) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn subsets_with_dup(nums : Array[Int]) -> Array[Array[Int]] {
  nums.sort()
  let n = nums.length()
  let t : Array[Int] = []
  let ans : Set[Array[Int]] = Set::new()
  for mask = 0; mask < (1 << n); mask = mask + 1 {
    t.clear()
    let mut flag = true
    for i = 0; i < n; i = i + 1 {
      if (mask & (1 << i)) != 0 {
        if i > 0 && (mask >> ((i - 1) & 1)) == 0 && nums[i] == nums[i - 1] {
          flag = false
          break
        }
        t.push(nums[i])
      }
    }
    if flag {
      ans.add(t.copy())
    }
  }
  ans.to_array()
}
```

## Tests

```moonbit
fn subsets_with_dup1(nums : Array[Int]) -> @immut/sorted_set.T[Array[Int]] {
  let mut res = @immut/sorted_set.new()
  for i in subsets_with_dup(nums) {
    res = res.add(i)
  }
  res
}

test "example 1" {
  inspect!(
    subsets_with_dup1([1, 2, 2]),
    content="@immut/sorted_set.of([[], [1], [2], [1, 2], [2, 2], [1, 2, 2]])",
  )
}

test "example 2" {
  inspect!(subsets_with_dup1([0]), content="@immut/sorted_set.of([[], [0]])")
}
```
