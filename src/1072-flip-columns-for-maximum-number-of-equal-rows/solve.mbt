///|
fn max_equal_rows_after_flips(matrix : Array[Array[Int]]) -> Int {
  let cnt : @hashmap.T[String, Int] = @hashmap.new()
  let mut ans = 0
  matrix.each(fn(row) {
    let row_copy = Array::copy(row)
    if row_copy[0] == 1 {
      for i = 0; i < row_copy.length(); i = i + 1 {
        row_copy[i] = row_copy[i] ^ 1
      }
    }
    let mut s = ""
    row_copy.each(fn(x) { s += x.to_string() })
    cnt.set(s, cnt.get(s).or(0) + 1)
    ans = max(ans, cnt.get(s).unwrap())
  })
  ans
}

// Custom max function (MoonBit has no built-in max function)
///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
