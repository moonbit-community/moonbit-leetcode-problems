fn sort_intervals(intervals : Array[Array[Int]]) -> Array[Array[Int]] {
  // Bubble sort based on the second element of each interval
  let n = intervals.length()
  for i = 0; i < n - 1; i = i + 1 {
    for j = 0; j < n - i - 1; j = j + 1 {
      if intervals[j][1] > intervals[j + 1][1] {
        // Swap intervals[j] and intervals[j + 1]
        let tmp = intervals[j]
        intervals[j] = intervals[j + 1]
        intervals[j + 1] = tmp
      }
    }
  }
  intervals
}

fn erase_overlap_intervals(intervals : Array[Array[Int]]) -> Int {
  let sorted_intervals = sort_intervals(intervals)
  let mut t = sorted_intervals[0][1]
  let mut ans = 0
  for i = 1; i < sorted_intervals.length(); i = i + 1 {
    if sorted_intervals[i][0] >= t {
      t = sorted_intervals[i][1]
    } else {
      ans = ans + 1
    }
  }
  ans
}
