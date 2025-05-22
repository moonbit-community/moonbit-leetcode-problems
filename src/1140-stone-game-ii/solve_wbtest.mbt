///|
test "example 1" {
  let piles = [2, 7, 9, 4, 4]
  assert_eq!(stone_game_ii(piles), 10)
}

///|
test "example 2" {
  let piles = [1, 2, 3, 4, 5, 100]
  assert_eq!(stone_game_ii(piles), 104)
}
