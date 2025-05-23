///|
fn reverse_bits(n : Int) -> Int {
  let mut res = 0
  let mut num = n
  let mut i = 0
  while i < 32 {
    res = res | ((num & 1) << (31 - i))
    num = num >> 1
    i = i + 1
  }
  res
}
