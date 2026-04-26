///|
fn is_long_pressed_name(name : String, typed : String) -> Bool {
  let m : Int = name.length()
  let n : Int = typed.length()
  let mut i : Int = 0
  let mut j : Int = 0
  while i < m && j < n {
    if name.code_unit_at(i).to_int() != typed.code_unit_at(j).to_int() {
      return false
    }
    let mut cnt1 : Int = 0
    let mut cnt2 : Int = 0
    let c = name.code_unit_at(i).to_int()
    while i + 1 < m && name.code_unit_at(i + 1).to_int() == c {
      i = i + 1
      cnt1 = cnt1 + 1
    }
    while j + 1 < n && typed.code_unit_at(j + 1).to_int() == c {
      j = j + 1
      cnt2 = cnt2 + 1
    }
    if cnt1 > cnt2 {
      return false
    }
    i = i + 1
    j = j + 1
  }
  i == m && j == n
}
