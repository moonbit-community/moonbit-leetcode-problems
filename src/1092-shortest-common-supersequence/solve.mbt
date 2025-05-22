fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn shortest_common_supersequence(str1 : String, str2 : String) -> String {
  let m = str1.length()
  let n = str2.length()
  let f = Array::make(m + 1, Array::make(n + 1, 0))
  for i = 1; i <= m; i = i + 1 {
    for j = 1; j <= n; j = j + 1 {
      if str1[i - 1] == str2[j - 1] {
        f[i][j] = f[i - 1][j - 1] + 1
      } else {
        f[i][j] = max(f[i - 1][j], f[i][j - 1])
      }
    }
  }
  let mut ans = @immut/list.T::of([])
  let mut i = m
  let mut j = n
  while i > 0 || j > 0 {
    if i == 0 {
      j = j - 1
      ans = ans.concat(@immut/list.T::of([str2[j]]))
    } else if j == 0 {
      i = i - 1
      ans = ans.concat(@immut/list.T::of([str1[i]]))
    } else if f[i][j] == f[i - 1][j] {
      i = i - 1
      ans = ans.concat(@immut/list.T::of([str1[i]]))
    } else if f[i][j] == f[i][j - 1] {
      j = j - 1
      ans = ans.concat(@immut/list.T::of([str2[j]]))
    } else {
      i = i - 1
      j = j - 1
      ans = ans.concat(@immut/list.T::of([str1[i]]))
    }
  }
  ans.fold_left(init="", fn(s, c) { s + c.to_string() })
}
