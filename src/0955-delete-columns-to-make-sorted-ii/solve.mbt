fn min_deletion_size(a : Array[String]) -> Int {
  let len = a.length()
  if len <= 1 {
    return 0
  }
  let word_len = a[0].length()
  let mut res = 0
  let cut : Array[Bool] = Array::make(len, false)
  for j = 0; j < word_len; j = j + 1 {
    for i = 0; i < len - 1; i = i + 1 {
      if not(cut[i] && a[i][j] > a[i + 1][j]) {
        res = res + 1
        continue
      }
    }
    for i = 0; i < len - 1; i = i + 1 {
      if a[i][j] < a[i + 1][j] {
        cut[i] = true
      }
    }
  }
  res
}
