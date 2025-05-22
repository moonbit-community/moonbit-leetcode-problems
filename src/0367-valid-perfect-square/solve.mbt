///|
fn is_perfect_square(num : Int) -> Bool {
  let mut left : Int = 1
  let mut right : Int = num
  while left < right {
    let mid : Int = (left + right) / 2
    if mid * mid >= num {
      right = mid
    } else {
      left = mid + 1
    }
  }
  return left * left == num
}
