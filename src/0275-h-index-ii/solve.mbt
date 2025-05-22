///|
fn h_index(citations : Array[Int]) -> Int {
  let n = citations.length()
  let mut left = 0
  let mut right = n
  while left < right {
    let mid = (left + right + 1) / 2
    if citations[n - mid] >= mid {
      left = mid
    } else {
      right = mid - 1
    }
  }
  left
}
