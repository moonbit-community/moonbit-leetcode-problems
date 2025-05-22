fn nim_game(piles : Array[Int]) -> Bool {
  let mut xor_sum = 0
  for i = 0; i < piles.length(); i = i + 1 {
    xor_sum = xor_sum.lxor(piles[i])
  }
  xor_sum != 0
}
