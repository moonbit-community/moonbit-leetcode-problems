fn reverse_bits(n : Int) -> Int {
  let mut res = 0
  let mut num = n
  let mut i = 0
  while i < 32 {
    res = res.lor(num.land(1).lsl(31 - i))
    num = num.lsr(1)
    i = i + 1
  }
  res
}
