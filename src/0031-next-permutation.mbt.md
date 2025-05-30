---
difficulty: Medium
verified: true
---

# Next Permutation

A **permutation** of an array of integers is an arrangement of its members into a sequence or linear order.

- For example, for `arr = [1, 2,3]`, the following are all the permutations of `arr`: `[1, 2,3], [1, 3,2], [2, 1, 3], [2, 3, 1], [3, 1,2], [3, 2,1]`.

The **next permutation** of an array of integers is the next lexicographically greater permutation of its integer. More formally, if all the permutations of the array are sorted in one container according to their lexicographical order, then the **next permutation** of that array is the permutation that follows it in the sorted container. If such an arrangement is not possible, the array must be rearranged as the lowest possible order (i.e., sorted in ascending order).

- For example, the next permutation of `arr = [1, 2,3]` is `[1, 3,2]`.
- Similarly, the next permutation of `arr = [2, 3,1]` is `[3, 1,2]`.
- While the next permutation of `arr = [3, 2,1]` is `[1, 2,3]` because `[3, 2,1]` does not have a lexicographically larger rearrangement.

Given an array of integers `nums`, _find the next permutation of_ `nums`.

The replacement must be **[in place](http://en.wikipedia.org/wiki/In-place_algorithm)** and use only constant extra memory.

## Examples

### Example 1

Input: `nums = [1, 2,3]`
Output: `[1, 3,2]`

### Example 2

Input: `nums = [3, 2,1]`
Output: `[1, 2,3]`

### Example 3

Input: `nums = [1, 1,5]`
Output: `[1, 5,1]`

## Constraints

- `1 <= nums.length <= 100`
- `0 <= nums[i] <= 100`

## Suggested Approach

```mbt nocheck
pub fn next_permutation(nums: Array[Int]) -> Unit {
  ...
}
```

## Solution

```mbt
pub fn swap(nums : Array[Int], i : Int, j : Int) -> Unit {
  let temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
}

pub fn reverse(nums : Array[Int], start : Int, end : Int) -> Array[Int] {
  let mut i = start
  let mut j = end
  while i < j {
    swap(nums, i, j)
    i = i + 1
    j = j - 1
  }
  nums
}

pub fn next_permutation(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let mut i = n - 2
  while i >= 0 && nums[i] >= nums[i + 1] {
    i -= 1
  }
  if i >= 0 {
    let mut j = n - 1
    while nums[j] <= nums[i] && j >= 0 {
      j = j - 1
    }
    swap(nums, i, j)
  }
  reverse(nums, i + 1, n - 1)
}
```

## Tests

```moonbit
test "example 1" {
  inspect!(next_permutation([1, 2, 3]), content="[1, 3, 2]")
}

test "example 2" {
  inspect!(next_permutation([3, 2, 1]), content="[1, 2, 3]")
}

test "example 3" {
  inspect!(next_permutation([1, 1, 5]), content="[1, 5, 1]")
}

test "example 2" {
  inspect!(next_permutation([1, 3, 2]), content="[2, 1, 3]")
}
```
