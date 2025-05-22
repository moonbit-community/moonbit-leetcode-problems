///|
fn is_valid_palindrome(s : String, k : Int) -> Bool {
  let n = s.length()
  let f : Array[Array[Int]] = Array::make(n, Array::make(n, 0))
  for i = 0; i < n; i = i + 1 {
    f[i][i] = 1
  }
  for i = n - 2; i >= 0; i = i - 1 {
    for j = i + 1; j < n; j = j + 1 {
      if s[i] == s[j] {
        f[i][j] = f[i + 1][j - 1] + 2
      } else {
        f[i][j] = @math.maximum(f[i + 1][j], f[i][j - 1])
      }
      if f[i][j] + k >= n {
        return true
      }
    }
  }
  return false
}
