///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn character_replacement(s : String, k : Int) -> Int {
  let counter : Array[Int] = Array::make(26, 0)
  let mut i : Int = 0
  let mut j : Int = 0
  let mut maxCnt : Int = 0
  while i < s.length() {
    let c : Int = s.code_unit_at(i).to_int() - 'A'.to_int()
    counter[c] = counter[c] + 1
    maxCnt = max(maxCnt, counter[c])
    if i - j + 1 - maxCnt > k {
      let left = s.code_unit_at(j).to_int() - 'A'.to_int()
      counter[left] = counter[left] - 1
      j = j + 1
    }
    i = i + 1
  }
  i - j
}
