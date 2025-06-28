///|
test "example 1" {
  let grid = [[1, 1, 1], [1, 0, 1], [0, 0, 1]]
  assert_eq(max_number_of_accepted_invitations(grid), 3)
}

///|
test "example 2" {
  let grid = [[1, 0, 1, 0], [1, 0, 0, 0], [0, 0, 1, 0], [1, 1, 1, 0]]
  assert_eq(max_number_of_accepted_invitations(grid), 3)
}
