fn large_group_positions(s : String) -> @immut/list.T[@immut/list.T[Int]] {
  let n = s.length()
  let mut i = 0
  let mut ans : @immut/list.T[@immut/list.T[Int]] = Nil
  while i < n {
    let mut j = i
    while j < n && s[j] == s[i] {
      j = j + 1
    }
    if j - i >= 3 {
      ans = ans.concat(@immut/list.T::of([@immut/list.T::of([i, j - 1])]))
    }
    i = j
  }
  ans
}
