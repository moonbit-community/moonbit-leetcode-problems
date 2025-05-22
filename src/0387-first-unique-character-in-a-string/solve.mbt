fn first_uniq_char(s : String) -> Int {
  let cnt : Array[Int] = Array::make(26, 0)
  let n : Int = s.length()
  let mut i : Int = 0
  while i < n {
    cnt[s.get(i).to_int() - 'a'.to_int()] = cnt[s.get(i).to_int() - 'a'.to_int()] +
      1
    i = i + 1
  }
  i = 0
  while i < n {
    if cnt[s.get(i).to_int() - 'a'.to_int()] == 1 {
      return i
    }
    i = i + 1
  }
  -1
}
