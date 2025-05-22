///|
fn index_of_char(c : Char) -> Int {
  c.to_int() - 'a'.to_int()
}

///|
fn count_characters(words : @immut/list.T[String], chars : String) -> Int {
  // Initialize count array for chars
  let cnt : Array[Int] = Array::make(26, 0)
  for i = 0; i < chars.length(); i = i + 1 {
    let idx = index_of_char(chars[i])
    cnt[idx] = cnt[idx] + 1
  }
  let ans = 0
  fn check_word(word : String, cnt : Array[Int]) -> Int {
    let wc : Array[Int] = Array::make(26, 0)
    let mut ok = true
    for i = 0; i < word.length(); i = i + 1 {
      let idx = index_of_char(word[i])
      wc[idx] = wc[idx] + 1
      if wc[idx] > cnt[idx] {
        ok = false
        break
      }
    }
    if ok {
      word.length()
    } else {
      0
    }
  }

  fn go(words : @immut/list.T[String], ans : Int, cnt : Array[Int]) -> Int {
    match words {
      Nil => ans
      Cons(word, rest) => {
        let mut ans = ans
        ans = ans + check_word(word, cnt)
        go(rest, ans, cnt)
      }
    }
  }

  go(words, ans, cnt)
}
