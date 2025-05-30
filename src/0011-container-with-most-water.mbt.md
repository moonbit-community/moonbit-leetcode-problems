---
difficulty: Medium
verified: true
---

# Container With Most Water

You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `ith` line are `(i, 0)` and `(i, height[i])`.

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return _the maximum amount of water a container can store_.

**Notice** that you may not slant the container.

**Example 1:**

**Input:** height = \[1,8,6,2,5,4,8,3,7\]
**Output:** 49
**Explanation:** The above vertical lines are represented by array \[1,8,6,2,5,4,8,3,7\]. In this case, the max area of water (blue section) the container can contain is 49.

**Example 2:**

**Input:** height = \[1,1\]
**Output:** 1

**Constraints:**

* `n == height.length`
* `2 <= n <= 10^5`
* `0 <= height[i] <= 10^4`

## Suggested Approach

```mbt nocheck
pub fn max_area(height: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn max_area(height : Array[Int]) -> Int {
  let mut left = 0
  let mut right = height.length() - 1
  let mut max_area = 0
  while left < right {
    let current_area = @math.minimum(height[left], height[right]) *
      (right - left)
    if current_area > max_area {
      max_area = current_area
    }
    if height[left] < height[right] {
      left = left + 1
    } else {
      right = right - 1
    }
  }
  max_area
}
```

## Tests

```moonbit
test "example 1" {
  let height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
  assert_eq(max_area(height), 49)
}

test "example 2" {
  let height = [1, 1]
  assert_eq(max_area(height), 1)
}

test "example 3" {
  let height = [4, 3, 2, 1, 4]
  assert_eq(max_area(height), 16)
}

test "example 4" {
  let height = [1, 2, 1]
  assert_eq(max_area(height), 2)
}

test "example 5" {
  let height = [2, 3, 10, 5, 7, 8, 9]
  assert_eq(max_area(height), 36)
}
```
