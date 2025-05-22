///|
fn is_alien_sorted(words : Array[String], order : String) -> Bool {
  let m : Array[Int] = Array::make(26, -1)
  for i = 0; i < 26; i = i + 1 {
    m[order[i].to_int() - 'a'.to_int()] = i
  }
  for i = 0; i < 20; i = i + 1 {
    let mut prev = -1
    let mut valid = true
    for i = 0; i < words.length(); i = i + 1 {
      let x = words[i]
      let curr = if i >= x.length() {
        -1
      } else {
        m[x[i].to_int() - 'a'.to_int()]
      }
      if prev > curr {
        return false
      }
      if prev == curr {
        valid = false
      }
      prev = curr
    }
    if valid {
      break
    }
  }
  true
}
