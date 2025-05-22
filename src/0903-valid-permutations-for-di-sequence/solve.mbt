///|
fn num_perms_di_sequence(s : String) -> Int {
  let mod = 1000000007
  let n = s.length()
  let f : Array[Array[Int]] = Array::make(n + 1, Array::make(n + 1, 0))
  f[0][0] = 1
  fn mod_add(a : Int, b : Int, mod : Int) -> Int {
    let result = a + b
    result % mod
  }

  for i = 1; i <= n; i = i + 1 {
    if s[i - 1] == 'D' {
      for j = 0; j <= i; j = j + 1 {
        for k = j; k < i; k = k + 1 {
          f[i][j] = mod_add(f[i][j], f[i - 1][k], mod)
        }
      }
    } else {
      for j = 0; j <= i; j = j + 1 {
        for k = 0; k < j; k = k + 1 {
          f[i][j] = mod_add(f[i][j], f[i - 1][k], mod)
        }
      }
    }
  }
  let mut ans = 0
  for j = 0; j <= n; j = j + 1 {
    ans = mod_add(ans, f[n][j], mod)
  }
  ans
}
