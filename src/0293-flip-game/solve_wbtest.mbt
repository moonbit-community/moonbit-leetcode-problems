///|
test "example 1" {
  let current_state = "++--++"
  let moves = generate_possible_next_moves(current_state)
  let expected = @immut/list.of(["--++++", "+--+++", "++--+-"])
  assert_eq!(moves, expected)
}

///|
test "example 2" {
  let current_state = "++++"
  let moves = generate_possible_next_moves(current_state)
  let expected = @immut/list.of(["--++", "+--+"])
  assert_eq!(moves, expected)
}

///|
test "example 3" {
  let current_state = "+"
  let moves = generate_possible_next_moves(current_state)
  let expected = @immut/list.of([])
  assert_eq!(moves, expected)
}
