---
difficulty: Easy
verified: true
---

# Merge Sorted Array

You are given two integer arrays `nums1` and `nums2`, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

Merge `nums1` and `nums2` into a single array sorted in non-decreasing order.

## Suggested Approach

```mbt nocheck
pub fn merge(nums1: Array[Int], m: Int, nums2: Array[Int], n: Int) -> Unit {
  ...
}
```

## Solution

```mbt
pub fn merge(a : Array[Int], m : Int, b : Array[Int], n : Int) -> Unit {
  let mut i = m - 1
  let mut j = n - 1
  let mut cur = m + n - 1
  while cur >= 0 {
    guard b.get(j) is Some(bj) else { break }
    if a.get(i) is Some(ai) && ai >= bj {
      a[cur] = ai
      i -= 1
      cur -= 1
    } else {
      a[cur] = bj
      j -= 1
      cur -= 1
      continue
    }
  }
}
```

## Tests

```moonbit
test "example 1" {
  let p = [1, 2, 3, 0, 0, 0]
  let q = [2, 5, 6]
  merge(p, 3, q, 3)
  inspect(p, content="[1, 2, 2, 3, 5, 6]")
}

test "example 2" {
  let p = [1, 2, 4, 6, 0, 0, 0]
  let q = [2, 5, 7]
  merge(p, 4, q, 3)
  inspect(p, content="[1, 2, 2, 4, 5, 6, 7]")
}

test "example 3" {
  let p = [1]
  let q = []
  merge(p, 1, q, 0)
  inspect(p, content="[1]")
}

test "example 4" {
  let p = [0]
  let q = [1]
  merge(p, 0, q, 1)
  inspect(p, content="[1]")
}

test "example 5" {
  let p = [1, 2, 3, 0, 0, 0]
  let q = [2, 5, 6]
  merge(p, 3, q, 3)
  inspect(p, content="[1, 2, 2, 3, 5, 6]")
}

test "example 6" {
  let p = [2, 2, 3, 0, 0, 0]
  let q = [1, 5, 6]
  merge(p, 3, q, 3)
  inspect(p, content="[1, 2, 2, 3, 5, 6]")
}

test "example 6" {
  let p = [4, 5, 6, 0, 0, 0]
  let q = [1, 2, 3]
  merge(p, 3, q, 3)
  inspect(p, content="[1, 2, 3, 4, 5, 6]")
}
```
