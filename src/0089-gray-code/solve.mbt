///|
fn gray_code(n : Int) -> Array[Int] {
  let ret = Array::make(1 << n, 0)
  for i = 0; i < ret.length(); i = i + 1 {
    ret[i] = (i >> 1) ^ i
  }
  ret
}
