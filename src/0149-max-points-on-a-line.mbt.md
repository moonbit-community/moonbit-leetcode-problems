---
difficulty: Hard
verified: true
---

# Max Points on a Line

Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane, return the maximum number of points that lie on the same straight line.

Example 1:

Input: points = [[1,1],[2,2],[3,3]]
Output: 3

Example 2:

Input: points = [[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]
Output: 4

Constraints:

1 <= points.length <= 300
points[i].length == 2
-10^4 <= xi, yi <= 10^4
All the points are unique.

## Suggested Approach

```mbt nocheck
pub fn max_points(points: Array[Array[Int]]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn max_points(points : Array[Array[Int]]) -> Int {
  let n = points.length()
  let mut ans = 1
  for i = 0; i < n; i = i + 1 {
    let x1 = points[i][0]
    let y1 = points[i][1]
    for j = i + 1; j < n; j = j + 1 {
      let x2 = points[j][0]
      let y2 = points[j][1]
      let mut cnt = 2
      for k = j + 1; k < n; k = k + 1 {
        let x3 = points[k][0]
        let y3 = points[k][1]
        let a = (y2 - y1) * (x3 - x1)
        let b = (y3 - y1) * (x2 - x1)
        if a == b {
          cnt = cnt + 1
        }
      }
      ans = max(ans, cnt)
    }
  }
  ans
}

pub fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
```

## Tests

```moonbit
test "example 1" {
  let points : Array[Array[Int]] = [[1, 1], [2, 2], [3, 3]]
  assert_eq(max_points(points), 3)
}

test "example 2" {
  let points : Array[Array[Int]] = [
    [1, 1],
    [3, 2],
    [5, 3],
    [4, 1],
    [2, 3],
    [1, 4],
  ]
  assert_eq(max_points(points), 4)
}
```
