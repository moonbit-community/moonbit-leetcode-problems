test "example 1" {
  assert_eq!(find_winner_of_circular_game(5, 2), 3)
}

test "example 2" {
  assert_eq!(find_winner_of_circular_game(6, 5), 1)
}

test "single friend" {
  assert_eq!(find_winner_of_circular_game(1, 1), 1)
}

test "large k" {
  assert_eq!(find_winner_of_circular_game(500, 500), 280)
}
