---
difficulty: Medium
verified: true
---

# Permutations

Given an array `nums` of distinct integers, return _all_ the possible permutations. You can return the answer in **any order**.

## Suggested Approach

```mbt nocheck
pub fn permute(nums: Array[Int]) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn _permute(nums : ArrayView[Int]) -> Array[Array[Int]] {
  guard nums is [head, .. tail] else { [[]] }
  let base = _permute(tail)
  let res = []
  for it in base {
    for i in 0..=it.length() {
      let itc = it.copy()
      itc.insert(i, head)
      res.push(itc)
    }
  }
  res
}

pub fn permute(nums : Array[Int]) -> Array[Array[Int]] {
  return _permute(nums)
}
```

## Tests

```moonbit
fn permute1(nums : Array[Int]) -> @immut/sorted_set.T[Array[Int]] {
  let mut res = @immut/sorted_set.new()
  for i in permute(nums) {
    res = res.add(i)
  }
  res
}

test "example 1" {
  inspect!(
    permute1([1, 2, 3]),
    content="@immut/sorted_set.of([[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]])",
  )
}

test "example 2" {
  inspect!(
    permute1([0, 1]),
    content="@immut/sorted_set.of([[0, 1], [1, 0]])",
  )
}

test "example 3" {
  inspect!(
    permute1([1]),
    content="@immut/sorted_set.of([[1]])",
  )
}
```
