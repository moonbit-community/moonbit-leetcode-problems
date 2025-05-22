///|
fn trailing_zeroes(n : Int) -> Int {
  let mut ans = 0
  let mut n = n
  while n > 0 {
    n = n / 5
    ans = ans + n
  }
  ans
}
