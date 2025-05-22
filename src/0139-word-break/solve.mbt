///|
fn word_break(s : String, word_dict : @immut/list.T[String]) -> Bool {
  let n = s.length()
  let f : Array[Bool] = Array::make(n + 1, false)
  f[0] = true
  fn substring(str : String, start : Int, end : Int) -> String {
    let mut result = ""
    let mut i = start
    while i < end {
      result = result + str[i].to_string()
      i = i + 1
    }
    result
  }

  for i = 1; i <= n; i = i + 1 {
    let mut j = 0
    while j < i {
      if f[j] && word_dict.contains(substring(s, j, i)) {
        f[i] = true
        break
      }
      j = j + 1
    }
  }
  f[n]
}
