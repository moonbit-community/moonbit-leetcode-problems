test "example 1" {
  assert_eq!(stone_game_iii([1, 2, 3, 7]).to_string(), "Bob")
}

test "example 2" {
  assert_eq!(stone_game_iii([1, 2, 3, -9]).to_string(), "Alice")
}

test "example 3" {
  assert_eq!(stone_game_iii([1, 2, 3, 6]).to_string(), "Tie")
}
