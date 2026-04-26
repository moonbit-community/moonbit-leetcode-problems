///|
fn first_uniq_char(s : String) -> Int {
  let cnt : Array[Int] = Array::make(26, 0)
  let n : Int = s.length()
  let mut i : Int = 0
  while i < n {
    let c = s.code_unit_at(i).to_int() - 'a'.to_int()
    cnt[c] = cnt[c] + 1
    i = i + 1
  }
  i = 0
  while i < n {
    if cnt[s.code_unit_at(i).to_int() - 'a'.to_int()] == 1 {
      return i
    }
    i = i + 1
  }
  -1
}
