test "example 1" {
  assert_eq!(winner_square_game(1), true)
}

test "example 2" {
  assert_eq!(winner_square_game(2), false)
}

test "example 3" {
  assert_eq!(winner_square_game(4), true)
}

test "example 4" {
  assert_eq!(winner_square_game(7), false)
}

test "example 5" {
  assert_eq!(winner_square_game(17), false)
}
