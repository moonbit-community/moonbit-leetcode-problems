///|
fn split_words(s : String) -> @immut/list.T[String] {
  let mut words : @immut/list.T[String] = Nil
  let mut i = 0
  let n = s.length()
  while i < n {
    while i < n && s[i] == ' ' {
      i = i + 1
    }
    if i < n {
      let mut t = ""
      let mut j = i
      while j < n && s[j] != ' ' {
        t = t + s[j].to_string()
        j = j + 1
      }
      words = words.concat(@immut/list.of([t]))
      i = j
    }
  }
  words
}

///|
fn reverse_list(words : @immut/list.T[String]) -> @immut/list.T[String] {
  fn helper(
    list : @immut/list.T[String],
    acc : @immut/list.T[String]
  ) -> @immut/list.T[String] {
    match list {
      Nil => acc
      Cons(x, xs) => helper(xs, Cons(x, acc))
    }
  }

  helper(words, Nil)
}

///|
fn join_words(words : @immut/list.T[String], sep : String) -> String {
  match words {
    Nil => ""
    Cons(head, tail) =>
      match tail {
        Nil => head
        _ => head + sep + join_words(tail, sep)
      }
  }
}

///|
fn reverse_words(s : String) -> String {
  let words = split_words(s)
  let reversed = reverse_list(words)
  join_words(reversed, " ")
}
