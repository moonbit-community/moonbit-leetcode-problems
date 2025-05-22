fn calculate_time(keyboard : String, word : String) -> Int {
  let pos : Array[Int] = Array::make(26, 0)
  // Filling the pos array with the respective positions
  for i = 0; i < 26; i = i + 1 {
    pos[keyboard[i].to_int() - 97] = i
  }
  let mut ans = 0
  let mut i = 0
  let word_length = word.length()
  for index = 0; index < word_length; index = index + 1 {
    let c = word[index]
    let j = pos[c.to_int() - 97]
    ans = ans + abs(i - j)
    i = j
  }
  ans
}

fn abs(x : Int) -> Int {
  if x < 0 {
    return -x
  }
  x
}
