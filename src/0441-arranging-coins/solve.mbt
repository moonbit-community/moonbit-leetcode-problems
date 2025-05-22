fn arrange_coins(n : Int) -> Int {
  let mut left : Int = 1
  let mut right : Int = n
  while left < right {
    let mid : Int = (left + right + 1) / 2
    if (1 + mid) * mid / 2 <= n {
      left = mid
    } else {
      right = mid - 1
    }
  }
  left
}
