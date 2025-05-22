///|
fn has_alternating_bits(n : Int) -> Bool {
  let mut n = n
  n = n ^ n.lsr(1)
  (n & (n + 1)) == 0
}
