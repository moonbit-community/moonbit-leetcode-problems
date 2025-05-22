fn hamming_weight(n : Int) -> Int {
  let mut n = n
  let mut ans = 0
  while n != 0 {
    n -= n.land(-n)
    ans = ans + 1
  }
  ans
}
