fn has_alternating_bits(n : Int) -> Bool {
  let mut n = n
  n = n.lxor(n.lsr(1))
  n.land(n + 1) == 0
}
