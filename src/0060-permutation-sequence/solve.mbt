///|
fn get_permutation(n : Int, k : Int) -> String {
  let fac = Array::make(n, 0)
  fac[0] = 1
  for i = 1; i < n; i = i + 1 {
    fac[i] = fac[i - 1] * i
  }
  let mut k = k - 1
  let mut ans = ""
  let valid = Array::make(n + 1, 1)
  for i = 1; i <= n; i = i + 1 {
    let mut order = k / fac[n - i] + 1
    for j = 1; j <= n; j = j + 1 {
      order -= valid[j]
      if order == 0 {
        ans += j.to_string()
        valid[j] = 0
        break
      }
    }
    k %= fac[n - i]
  }
  ans
}
