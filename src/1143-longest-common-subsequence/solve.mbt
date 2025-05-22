///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn longest_common_subsequence(text1 : String, text2 : String) -> Int {
  let m = text1.length()
  let n = text2.length()
  let f : Array[Array[Int]] = Array::make(m + 1, Array::make(n + 1, 0))
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if text1[i] == text2[j] {
        f[i + 1][j + 1] = f[i][j] + 1
      } else {
        f[i + 1][j + 1] = max(f[i][j + 1], f[i + 1][j])
      }
    }
  }
  f[m][n]
}
