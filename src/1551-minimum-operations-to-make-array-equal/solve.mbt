///|
fn min_operations(n : Int) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < n / 2 {
    ans = ans + n - ((i << 2) | 1)
    i = i + 1
  }
  ans
}
