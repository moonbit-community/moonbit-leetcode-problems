///|
fn join(sentence : Array[String], delimiter : String) -> String {
  if sentence.length() == 0 {
    return ""
  }
  let mut result = sentence[0]
  let mut i = 1
  while i < sentence.length() {
    result = result + delimiter + sentence[i]
    i = i + 1
  }
  result
}

///|
fn words_typing(sentence : Array[String], rows : Int, cols : Int) -> Int {
  let s = join(sentence, " ") + " "
  let m = s.length()
  let mut cur = 0
  let mut rows = rows
  while rows > 0 {
    cur = cur + cols
    if s.get(cur % m) == ' ' {
      cur = cur + 1
    } else {
      while cur > 0 && s.get((cur - 1) % m) != ' ' {
        cur = cur - 1
      }
    }
    rows = rows - 1
  }
  cur / m
}
