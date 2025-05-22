///|
fn slice(s : String, start : Int, stop : Int) -> String {
  let mut result = ""
  let mut i = start
  while i < stop {
    result = result + s[i].to_string()
    i = i + 1
  }
  result
}

///|
fn longest_decomposition(text : String) -> Int {
  let n = text.length()
  if n < 2 {
    return n
  }
  let mut i = 1
  while i <= n / 2 {
    if slice(text, 0, i) == slice(text, n - i, n) {
      return 2 + longest_decomposition(slice(text, i, n - i))
    }
    i = i + 1
  }
  1
}
