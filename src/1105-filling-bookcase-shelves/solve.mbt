///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min_height_shelves(books : Array[Array[Int]], shelf_width : Int) -> Int {
  let n = books.length()
  let f : Array[Int] = Array::make(n + 1, 0)
  for i = 1; i <= n; i = i + 1 {
    let mut w = books[i - 1][0]
    let mut h = books[i - 1][1]
    f[i] = f[i - 1] + h
    for j = i - 1; j > 0; j = j - 1 {
      w = w + books[j - 1][0]
      if w > shelf_width {
        break
      }
      h = max(h, books[j - 1][1])
      f[i] = min(f[i], f[j - 1] + h)
    }
  }
  f[n]
}
