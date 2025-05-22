test "example 1" {
  let stones : Array[Int] = [2, 7, 4, 1, 8, 1]
  assert_eq!(last_stone_weight(stones), 1)
}

test "example 2" {
  let stones : Array[Int] = [2, 2]
  assert_eq!(last_stone_weight(stones), 0)
}
