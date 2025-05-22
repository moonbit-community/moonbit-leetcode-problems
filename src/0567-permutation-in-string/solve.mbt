fn check_inclusion(s1 : String, s2 : String) -> Bool {
  let n : Int = s1.length()
  let m : Int = s2.length()
  if n > m {
    return false
  }
  let cnt : Array[Int] = Array::make(26, 0)
  let mut i : Int = 0
  while i < n {
    cnt[s1[i].to_int() - 'a'.to_int()] = cnt[s1[i].to_int() - 'a'.to_int()] - 1
    cnt[s2[i].to_int() - 'a'.to_int()] = cnt[s2[i].to_int() - 'a'.to_int()] + 1
    i = i + 1
  }
  fn diffCount(cnt : Array[Int]) -> Int {
    let mut diff : Int = 0
    let mut i : Int = 0
    while i < cnt.length() {
      if cnt[i] != 0 {
        diff = diff + 1
      }
      i = i + 1
    }
    diff
  }

  let mut diff : Int = diffCount(cnt)
  if diff == 0 {
    return true
  }
  i = n
  while i < m {
    let a : Int = s2[i - n].to_int() - 'a'.to_int()
    let b : Int = s2[i].to_int() - 'a'.to_int()
    if cnt[b] == 0 {
      diff = diff + 1
    }
    cnt[b] = cnt[b] + 1
    if cnt[b] == 0 {
      diff = diff - 1
    }
    if cnt[a] == 0 {
      diff = diff + 1
    }
    cnt[a] = cnt[a] - 1
    if cnt[a] == 0 {
      diff = diff - 1
    }
    if diff == 0 {
      return true
    }
    i = i + 1
  }
  return false
}
