///|
fn valid_utf8(data : Array[Int]) -> Bool {
  let mut n : Int = 0
  let mut i : Int = 0
  while i < data.length() {
    let v : Int = data[i]
    if n > 0 {
      if v >> 6 != 0b10 {
        return false
      }
      n = n - 1
    } else if v >> 7 == 0 {
      n = 0
    } else if v >> 5 == 0b110 {
      n = 1
    } else if v >> 4 == 0b1110 {
      n = 2
    } else if v >> 3 == 0b11110 {
      n = 3
    } else {
      return false
    }
    i = i + 1
  }
  n == 0
}
