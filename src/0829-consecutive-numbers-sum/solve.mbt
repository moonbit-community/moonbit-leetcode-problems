fn consecutive_number_sum(n : Int) -> Int {
  let n = n / 2
  let mut ans = 0
  let mut k = 1
  while k * (k + 1) <= n {
    if n % k == 0 && (n / k + 1 - k) % 2 == 0 {
      ans = ans + 1
    }
    k = k + 1
  }
  ans
}
