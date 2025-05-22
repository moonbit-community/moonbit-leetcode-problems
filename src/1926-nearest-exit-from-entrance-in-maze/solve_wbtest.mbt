///|
test "example 1" {
  let maze = [['+', '+', '.', '+'], ['.', '.', '.', '+'], ['+', '+', '+', '.']]
  let entrance = [1, 2]
  assert_eq!(nearest_exit(maze, entrance), 1)
}

///|
test "example 2" {
  let maze = [['+', '+', '+'], ['.', '.', '.'], ['+', '+', '+']]
  let entrance = [1, 0]
  assert_eq!(nearest_exit(maze, entrance), 2)
}

///|
test "example 3" {
  let maze = [['.', '+']]
  let entrance = [0, 0]
  assert_eq!(nearest_exit(maze, entrance), -1)
}
