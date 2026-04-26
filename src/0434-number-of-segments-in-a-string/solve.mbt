///|
fn count_segments(s : String) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < s.length() {
    if s.code_unit_at(i).to_int() != ' '.to_int() &&
      (i == 0 || s.code_unit_at(i - 1).to_int() == ' '.to_int()) {
      ans = ans + 1
    }
    i = i + 1
  }
  ans
}
