///|
fn count_segments(s : String) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < s.length() {
    if s.get(i) != ' ' && (i == 0 || s.get(i - 1) == ' ') {
      ans = ans + 1
    }
    i = i + 1
  }
  ans
}
