///|
fn get_sum(a : Int, b : Int) -> Int {
  if b == 0 {
    a
  } else {
    get_sum(a ^ b, (a & b) << 1)
  }
}
