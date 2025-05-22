///|
fn swap(s : Array[Char], i : Int, j : Int) -> Unit {
  let temp = s[i]
  s[i] = s[j]
  s[j] = temp
}

///|
fn reverse_string(s : Array[Char]) -> Unit {
  for i = 0, j = s.length() - 1; i < j; i = i + 1, j = j - 1 {
    swap(s, i, j)
  }
}
