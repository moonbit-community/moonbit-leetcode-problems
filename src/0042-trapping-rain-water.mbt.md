---
difficulty: Hard
verified: true
---

# Trapping Rain Water

Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

Example 1:

Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

Example 2:

Input: height = [4,2,0,3,2,5]
Output: 9

Constraints:

n == height.length
1 <= n <= 2 * 10^4
0 <= height[i] <= 10^5

## Suggested Approach

```mbt nocheck
pub fn trap(height: Array[Int]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

pub fn trap(height : Array[Int]) -> Int {
  let mut ans = 0
  let stack : Array[Int] = Array::new()
  let n = height.length()
  for i = 0; i < n; i = i + 1 {
    while not(stack.is_empty()) && height[i] > height[stack[stack.length() - 1]] {
      let top = stack.pop_exn()
      if stack.is_empty() {
        break
      }
      let distance = i - stack[stack.length() - 1] - 1
      let bounded_height = min(height[i], height[stack[stack.length() - 1]]) -
        height[top]
      ans = ans + distance * bounded_height
    }
    stack.push(i)
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
}

test "example 2" {
  assert_eq(trap([4, 2, 0, 3, 2, 5]), 9)
}
```
