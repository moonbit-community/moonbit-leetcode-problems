///|
test "example_1" {
  let stones = Array::make(5, 0)
  stones[0] = -1
  stones[1] = 2
  stones[2] = -3
  stones[3] = 4
  stones[4] = -5
  assert_eq!(stone_game_viii(stones), 5)
}

///|
test "example_2" {
  let stones = Array::make(7, 0)
  stones[0] = 7
  stones[1] = -6
  stones[2] = 5
  stones[3] = 10
  stones[4] = 5
  stones[5] = -2
  stones[6] = -6
  assert_eq!(stone_game_viii(stones), 13)
}

///|
test "example_3" {
  let stones = Array::make(2, 0)
  stones[0] = -10
  stones[1] = -12
  assert_eq!(stone_game_viii(stones), -22)
}
