fn knight_dialer(n : Int) -> Int {
  let mod = 1000000007
  if n == 1 {
    return 10
  }
  let f : Array[Int] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  let mut nn : Int = n - 1
  while nn > 0 {
    let t : Array[Int] = Array::make(10, 0)
    t[0] = (f[4] + f[6]) % mod
    t[1] = (f[6] + f[8]) % mod
    t[2] = (f[7] + f[9]) % mod
    t[3] = (f[4] + f[8]) % mod
    t[4] = (f[0] + f[3] + f[9]) % mod
    t[6] = (f[0] + f[1] + f[7]) % mod
    t[7] = (f[2] + f[6]) % mod
    t[8] = (f[1] + f[3]) % mod
    t[9] = (f[2] + f[4]) % mod
    for i = 0; i < 10; i = i + 1 {
      f[i] = t[i]
    }
    nn = nn - 1
  }
  let mut ans : Int = 0
  for i = 0; i < 10; i = i + 1 {
    ans = (ans + f[i]) % mod
  }
  ans
}
