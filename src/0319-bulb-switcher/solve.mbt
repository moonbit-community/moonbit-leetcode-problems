///|
fn sqrt(n : Int) -> Int {
  let mut result = 0
  let mut left = 1
  let mut right = n
  while left <= right {
    let mid = (left + right) / 2
    if mid * mid <= n {
      result = mid
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  result
}

///|
fn bulb_switch(n : Int) -> Int {
  sqrt(n)
}
