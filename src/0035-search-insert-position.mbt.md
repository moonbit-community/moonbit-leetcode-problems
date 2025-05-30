---
difficulty: Easy
verified: true
---

# Search Insert Position

Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with `O(log n)` runtime complexity.

## Examples

### Example 1

Input: `nums = [1, 3, 5, 6]`, target = `5`
Output: `2`

### Example 2

Input: `nums = [1, 3, 5, 6]`, target = `2`
Output: `1`

### Example 3

Input: `nums = [1, 3, 5, 6]`, target = `7`
Output: `4`

### Example 4

Input: `nums = [1, 3, 5, 6]`, target = `0`
Output: `0`

### Example 5

Input: `nums = [1]`, target = `0`
Output: `0`

## Constraints

- `1 <= nums.length <= 10^4`
- `-10^4 <= nums[i] <= 10^4`
- `nums` contains **distinct** values sorted in **ascending** order.
- `-10^4 <= target <= 10^4`

## Suggested Approach

```mbt nocheck
pub fn search_insert(nums: Array[Int], target: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn search_insert(nums : Array[Int], target : Int) -> Int {
  let mut low = 0
  let mut high = nums.length() - 1
  while low <= high {
    let mid = (low + high) / 2
    if nums[mid] == target {
      return mid
    } else if nums[mid] < target {
      low = mid + 1
    } else {
      high = mid - 1
    }
  }
  low
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(search_insert([1, 3, 5, 6], 5), 2)
}

test "example 2" {
  assert_eq(search_insert([1, 3, 5, 6], 2), 1)
}

test "example 3" {
  assert_eq(search_insert([1, 3, 5, 6], 7), 4)
}

test "example 4" {
  assert_eq(search_insert([1, 3, 5, 6], 0), 0)
}

test "example 5" {
  assert_eq(search_insert([1], 0), 0)
}

test "insert in the middle" {
  assert_eq(search_insert([1, 2, 4, 5], 3), 2)
}

test "insert at the end" {
  assert_eq(search_insert([1, 2, 3, 4], 10), 4)
}
```
