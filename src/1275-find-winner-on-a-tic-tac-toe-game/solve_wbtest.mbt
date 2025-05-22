test "example 1" {
  let moves = [(0, 0), (2, 0), (1, 1), (2, 1), (2, 2)]
  assert_eq!(tictactoe(moves), "A")
}

test "example 2" {
  let moves = [(0, 0), (1, 1), (0, 1), (0, 2), (1, 0), (2, 0)]
  assert_eq!(tictactoe(moves), "B")
}

test "example 3" {
  let moves = [
    (0, 0),
    (1, 1),
    (2, 2),
    (1, 0),
    (1, 2),
    (2, 1),
    (0, 1),
    (0, 2),
    (2, 0),
  ]
  assert_eq!(tictactoe(moves), "Draw")
}

test "example 4" {
  let moves = [(0, 0), (1, 1)]
  assert_eq!(tictactoe(moves), "Pending")
}
