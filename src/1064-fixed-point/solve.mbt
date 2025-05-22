///|
fn fixed_point(arr : Array[Int]) -> Int {
  let mut left = 0
  let mut right = arr.length() - 1
  while left < right {
    let mid = (left + right) / 2
    if arr[mid] >= mid {
      right = mid
    } else {
      left = mid + 1
    }
  }
  if arr[left] == left {
    left
  } else {
    -1
  }
}
