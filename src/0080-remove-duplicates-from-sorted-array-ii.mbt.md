---
difficulty: Medium
verified: true
---

# Remove Duplicates from Sorted Array II

Given an integer array `nums` sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be `k`ept the same.

Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array `nums`. More formally, if there are `k` elements after removing the duplicates, then the first `k` elements of `nums` should hold the final result. It does not matter what you leave beyond the first `k` elements.

Return `k` after placing the final result in the first `k` slots of `nums`.

Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

## Suggested Approach

```mbt nocheck
pub fn remove_duplicates(nums: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn remove_duplicates(ns : Array[Int]) -> Unit {
  let mut i = 0
  for n in ns {
    if i < 2 || n != ns[i - 2] {
      ns[i] = n
      i += 1
    }
  }
  ns.resize(i, 0)
}
```

## Tests

```moonbit
test "example 1" {
  let arr = [1, 1, 1, 2, 2, 3]
  remove_duplicates(arr)
  inspect!(arr, content="[1, 1, 2, 2, 3]")
}

test "example 2" {
  let arr = [0, 0, 1, 1, 1, 1, 2, 3, 3]
  remove_duplicates(arr)
  inspect!(arr, content="[0, 0, 1, 1, 2, 3, 3]")
}
```
