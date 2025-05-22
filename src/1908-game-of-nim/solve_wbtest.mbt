test "example_1" {
  let piles = [1]
  assert_eq!(nim_game(piles), true)
}

test "example_2" {
  let piles = [1, 1]
  assert_eq!(nim_game(piles), false)
}

test "example_3" {
  let piles = [1, 2, 3]
  assert_eq!(nim_game(piles), false)
}

test "additional_test_1" {
  let piles = [2, 2]
  assert_eq!(nim_game(piles), false)
}

test "additional_test_2" {
  let piles = [3, 1, 1]
  assert_eq!(nim_game(piles), true)
}
