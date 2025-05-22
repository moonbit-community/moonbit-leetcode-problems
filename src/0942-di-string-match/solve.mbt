///|
fn di_string_match(s : String) -> Array[Int] {
  let n = s.length()
  let mut low = 0
  let mut high = n
  let ans : Array[Int] = Array::make(n + 1, 0)
  for i = 0; i < n; i = i + 1 {
    if s[i] == 'I' {
      ans[i] = low
      low = low + 1
    } else {
      ans[i] = high
      high = high - 1
    }
  }
  ans[n] = low
  ans
}
