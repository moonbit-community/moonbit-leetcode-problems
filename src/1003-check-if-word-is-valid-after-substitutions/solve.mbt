///|
fn is_valid(s : String) -> Bool {
  if s.length() % 3 != 0 {
    false
  } else {
    let mut t = @immut/list.of([])
    fn push_char(
      arr : @immut/list.T[UInt16],
      c : UInt16,
    ) -> @immut/list.T[UInt16] {
      arr.concat(@immut/list.of([c]))
    }

    fn pop_last_three(arr : @immut/list.T[UInt16]) -> @immut/list.T[UInt16] {
      arr.take(arr.length() - 3)
    }

    fn check_last_three(arr : @immut/list.T[UInt16]) -> Bool {
      arr.length() >= 3 &&
      arr.nth_exn(arr.length() - 3).to_int() == 'a'.to_int() &&
      arr.nth_exn(arr.length() - 2).to_int() == 'b'.to_int() &&
      arr.nth_exn(arr.length() - 1).to_int() == 'c'.to_int()
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
