test "example 1" {
  let obstacles = [0, 1, 2, 3, 0]
  assert_eq!(min_sideway_jumps(obstacles), 2)
}

test "example 2" {
  let obstacles = [0, 1, 1, 3, 3, 0]
  assert_eq!(min_sideway_jumps(obstacles), 0)
}

test "example 3" {
  let obstacles = [0, 2, 1, 0, 3, 0]
  assert_eq!(min_sideway_jumps(obstacles), 2)
}
