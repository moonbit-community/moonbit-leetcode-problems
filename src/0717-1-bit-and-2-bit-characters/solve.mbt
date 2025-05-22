fn is_one_bit_character(bits : Array[Int]) -> Bool {
  let mut i = 0
  let n = bits.length()
  while i < n - 1 {
    i = i + bits[i] + 1
  }
  i == n - 1
}
