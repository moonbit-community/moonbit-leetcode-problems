///|
fn is_number(s : String) -> Bool {
  let n = s.length()
  if n == 0 {
    return false
  }
  let mut i = 0
  if s.code_unit_at(i).to_int() == '+'.to_int() ||
    s.code_unit_at(i).to_int() == '-'.to_int() {
    i = i + 1
  }
  if i == n {
    return false
  }
  if s.code_unit_at(i).to_int() == '.'.to_int() &&
    (
      i + 1 == n ||
      s.code_unit_at(i + 1).to_int() == 'e'.to_int() ||
      s.code_unit_at(i + 1).to_int() == 'E'.to_int()
    ) {
    return false
  }
  let mut dot = 0
  let mut e = 0
  while i < n {
    if s.code_unit_at(i).to_int() == '.'.to_int() {
      if e > 0 || dot > 0 {
        return false
      }
      dot = dot + 1
    } else if s.code_unit_at(i).to_int() == 'e'.to_int() ||
      s.code_unit_at(i).to_int() == 'E'.to_int() {
      if e > 0 || i == 0 || i == n - 1 {
        return false
      }
      e = e + 1
      if s.code_unit_at(i + 1).to_int() == '+'.to_int() ||
        s.code_unit_at(i + 1).to_int() == '-'.to_int() {
        i = i + 1
        if i == n - 1 {
          return false
        }
      }
    } else if s.code_unit_at(i).to_int() < '0'.to_int() ||
      s.code_unit_at(i).to_int() > '9'.to_int() {
      return false
    }
    i = i + 1
  }
  true
}
