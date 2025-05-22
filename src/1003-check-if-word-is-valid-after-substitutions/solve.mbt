fn is_valid(s : String) -> Bool {
  if s.length() % 3 != 0 {
    false
  } else {
    let mut t = @immut/list.T::of([])
    fn push_char(arr : @immut/list.T[Char], c : Char) -> @immut/list.T[Char] {
      arr.concat(@immut/list.T::of([c]))
    }

    fn pop_last_three(arr : @immut/list.T[Char]) -> @immut/list.T[Char] {
      arr.take(arr.length() - 3)
    }

    fn check_last_three(arr : @immut/list.T[Char]) -> Bool {
      arr.length() >= 3 && arr.nth_exn(arr.length() - 3) == 'a' && arr.nth_exn(
        arr.length() - 2,
      ) == 'b' && arr.nth_exn(arr.length() - 1) == 'c'
    }

    for i = 0; i < s.length(); i = i + 1 {
      let c = s[i]
      t = push_char(t, c)
      if check_last_three(t) {
        t = pop_last_three(t)
      }
    }
    t.length() == 0
  }
}
