///|
struct Interval {
  start : Int
  index : Int
}

///|
fn binary_search(intervals : Array[Interval], target : Int) -> Int {
  let mut left = 0
  let mut right = intervals.length() - 1
  while left <= right {
    let mid = (left + right) / 2
    if intervals[mid].start < target {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  if left < intervals.length() && intervals[left].start >= target {
    return intervals[left].index
  } else {
    return -1
  }
}

///|
fn find_right_interval(intervals : Array[Array[Int]]) -> Array[Int] {
  let n = intervals.length()
  let starts : Array[Interval] = Array::make(n, Interval::{ start: 0, index: 0 })
  for i = 0; i < n; i = i + 1 {
    starts[i] = Interval::{ start: intervals[i][0], index: i }
  }

  // Sort intervals by start time using insertion sort
  for i = 1; i < n; i = i + 1 {
    let key = starts[i]
    let mut j = i - 1
    while j >= 0 && starts[j].start > key.start {
      starts[j + 1] = starts[j]
      j = j - 1
    }
    starts[j + 1] = key
  }
  let res : Array[Int] = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    let end = intervals[i][1]
    res[i] = binary_search(starts, end)
  }
  res
}
