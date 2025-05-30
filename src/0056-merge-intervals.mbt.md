---
difficulty: Medium
verified: true
---

# Merge Intervals

Given an array of intervals where `intervals[i] = [starti, endi]`, merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

Example 1:

Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

Example 2:

Input: intervals = [[1,4],[4,5]]
Output: [[1,5]]
Explanation: Intervals [1,4] and [4,5] are considered overlapping.

Constraints:

1 <= intervals.length <= 10^4
intervals[i].length == 2
0 <= starti <= endi <= 10^4

## Suggested Approach

```mbt nocheck
pub fn merge(intervals: Array[Array[Int]]) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn merge(intervals : Array[Array[Int]]) -> Array[Array[Int]] {
  if intervals.length() == 0 {
    return [[]]
  }
  intervals.sort_by(fn(interval1, interval2) { interval1[0] - interval2[0] })
  let merged : Array[Array[Int]] = []
  for i = 0; i < intervals.length(); i = i + 1 {
    let l = intervals[i][0]
    let r = intervals[i][1]
    if merged.length() == 0 || merged[merged.length() - 1][1] < l {
      merged.push([l, r])
    } else {
      merged[merged.length() - 1][1] = @math.maximum(
        r,
        merged[merged.length() - 1][1],
      )
    }
  }
  merged
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(merge([[1, 3], [2, 6], [8, 10], [15, 18]]), [
    [1, 6],
    [8, 10],
    [15, 18],
  ])
}

test "example 2" {
  assert_eq(merge([[1, 4], [4, 5]]), [[1, 5]])
}
```
