fn max_value(n : Int, index : Int, max_sum : Int) -> Int {
  fn sum_with_peak(n : Int, index : Int, peak : Int) -> Int {
    let mut sum = 0
    let left_length = index
    let right_length = n - index - 1
    if peak > left_length {
      sum += (peak + peak - left_length) * (left_length + 1) / 2
    } else {
      sum += (peak + 1) * peak / 2 + (left_length - peak + 1)
    }
    if peak > right_length {
      sum += (peak + peak - right_length) * (right_length + 1) / 2
    } else {
      sum += (peak + 1) * peak / 2 + (right_length - peak + 1)
    }
    sum - peak
  }

  let mut left = 1
  let mut right = max_sum
  let mut result = 0
  while left <= right {
    let mid = left + (right - left) / 2
    if sum_with_peak(n, index, mid) <= max_sum {
      result = mid
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  result
}
