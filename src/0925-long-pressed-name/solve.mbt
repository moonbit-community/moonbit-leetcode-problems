///|
fn is_long_pressed_name(name : String, typed : String) -> Bool {
  let m : Int = name.length()
  let n : Int = typed.length()
  let mut i : Int = 0
  let mut j : Int = 0
  while i < m && j < n {
    if name[i] != typed[j] {
      return false
    }
    let mut cnt1 : Int = 0
    let mut cnt2 : Int = 0
    let c : Char = name[i]
    while i + 1 < m && name[i + 1] == c {
      i = i + 1
      cnt1 = cnt1 + 1
    }
    while j + 1 < n && typed[j + 1] == c {
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
