fn char_to_index(c : Char) -> Int {
  c.to_int() - 'a'.to_int()
}

fn find_anagrams(s : String, p : String) -> @immut/list.T[Int] {
  let m = s.length()
  let n = p.length()
  let mut ans = @immut/list.T::Nil
  if m < n {
    return ans
  }
  let cnt1 : Array[Int] = Array::make(26, 0)
  let cnt2 : Array[Int] = Array::make(26, 0)
  let mut i = 0
  while i < n {
    cnt1[char_to_index(p[i])] = cnt1[char_to_index(p[i])] + 1
    i = i + 1
  }
  i = 0
  let mut j = 0
  while i < m {
    let k = char_to_index(s[i])
    cnt2[k] = cnt2[k] + 1
    while cnt2[k] > cnt1[k] {
      cnt2[char_to_index(s[j])] = cnt2[char_to_index(s[j])] - 1
      j = j + 1
    }
    if i - j + 1 == n {
      ans = @immut/list.T::Cons(j, ans)
    }
    i = i + 1
  }
  ans
}
