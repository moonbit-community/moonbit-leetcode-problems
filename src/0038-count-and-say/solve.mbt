///|
fn count_and_say(n : Int) -> String {
  let mut str = "1"
  for i = 2; i <= n; i = i + 1 {
    let mut sb = ""
    let mut start = 0
    let mut pos = 0
    while pos < str.length() {
      while pos < str.length() && str[pos] == str[start] {
        pos += 1
      }
      sb += (pos - start).to_string()
      sb += str[start].to_string()
      start = pos
    }
    str = sb
  }
  str
}
