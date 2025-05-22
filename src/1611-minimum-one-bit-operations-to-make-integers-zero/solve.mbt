///|
fn minimum_one_bit_operations(n : Int) -> Int {
  let mut ans = 0
  let mut n = n
  while n > 0 {
    ans = ans ^ n
    n = n >> 1
  }
  ans
}
