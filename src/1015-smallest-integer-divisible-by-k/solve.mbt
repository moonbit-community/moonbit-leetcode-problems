fn smallest_repunit_div_by_k(k : Int) -> Int {
  let mut n = 1 % k
  for i = 1; i <= k; i = i + 1 {
    if n == 0 {
      return i
    }
    n = (n * 10 + 1) % k
  }
  -1
}
