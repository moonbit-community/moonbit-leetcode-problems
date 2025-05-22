///|
fn find_lonely_pixel(picture : Array[Array[Char]]) -> Int {
  let m : Int = picture.length()
  let n : Int = picture[0].length()
  let rows : Array[Int] = Array::make(m, 0)
  let cols : Array[Int] = Array::make(n, 0)
  let mut i : Int = 0
  while i < m {
    let mut j : Int = 0
    while j < n {
      if picture[i][j] == 'B' {
        rows[i] = rows[i] + 1
        cols[j] = cols[j] + 1
      }
      j = j + 1
    }
    i = i + 1
  }
  let mut res : Int = 0
  i = 0
  while i < m {
    if rows[i] == 1 {
      let mut j : Int = 0
      while j < n {
        if picture[i][j] == 'B' && cols[j] == 1 {
          res = res + 1
          break
        }
        j = j + 1
      }
    }
    i = i + 1
  }
  res
}
