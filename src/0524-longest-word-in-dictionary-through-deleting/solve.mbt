///|
fn check(s : String, d : String) -> Bool {
  let mut i = 0
  let mut j = 0
  while i < s.length() && j < d.length() {
    if s[i] == d[j] {
      j = j + 1
    }
    i = i + 1
  }
  j == d.length()
}

///|
fn find_longest_word(s : String, dictionary : @immut/list.T[String]) -> String {
  let mut answer = ""
  fn aux(dictionary : @immut/list.T[String]) {
    match dictionary {
      Nil => ()
      Cons(a, rest) => {
        if check(s, a) &&
          (
            answer.length() < a.length() ||
            (answer.length() == a.length() && a < answer)
          ) {
          answer = a
        }
        aux(rest)
      }
    }
  }

  aux(dictionary)
  answer
}
