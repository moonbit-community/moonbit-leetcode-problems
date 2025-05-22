fn split(s : String, delim : Char) -> @immut/list.T[String] {
  fn helper(
    acc : @immut/list.T[String],
    curr : String,
    i : Int
  ) -> @immut/list.T[String] {
    if i == s.length() {
      if curr != "" {
        Cons(curr, acc)
      } else {
        acc
      }
    } else if s.get(i) == delim {
      helper(Cons(curr, acc), "", i + 1)
    } else {
      helper(acc, curr + s.get(i).to_string(), i + 1)
    }
  }

  helper(Nil, "", 0)
}

fn is_valid_serialization(preorder : String) -> Bool {
  let strs = split(preorder, ',')
  let diff = 1
  fn iter(list : @immut/list.T[String], diff : Int) -> Bool {
    match list {
      Nil => diff == 0
      Cons("#", xs) => iter(xs, diff - 1)
      Cons(_, xs) => if diff < 1 { false } else { iter(xs, diff + 1) }
    }
  }

  iter(strs, diff)
}
