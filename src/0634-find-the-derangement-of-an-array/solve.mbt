fn find_derangement(n : Int) -> Int {
  let mod : Int = 1000000007
  let mut a : Int = 1
  let mut b : Int = 0
  let mut i : Int = 2
  while i <= n {
    let c : Int = (i - 1) * (a + b) % mod
    a = b
    b = c
    i = i + 1
  }
  b
}
