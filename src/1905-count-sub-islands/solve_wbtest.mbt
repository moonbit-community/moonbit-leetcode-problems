///|
test "example 1" {
  let grid1 = [
    [1, 1, 1, 0, 0],
    [0, 1, 1, 1, 1],
    [0, 0, 0, 0, 0],
    [1, 0, 0, 0, 0],
    [1, 1, 0, 1, 1],
  ]
  let grid2 = [
    [1, 1, 1, 0, 0],
    [0, 0, 1, 1, 1],
    [0, 1, 0, 0, 0],
    [1, 0, 1, 1, 0],
    [0, 1, 0, 1, 0],
  ]
  assert_eq!(count_sub_islands(grid1, grid2), 3)
}

///|
test "example 2" {
  let grid1 = [
    [1, 0, 1, 0, 1],
    [1, 1, 1, 1, 1],
    [0, 0, 0, 0, 0],
    [1, 1, 1, 1, 1],
    [1, 0, 1, 0, 1],
  ]
  let grid2 = [
    [0, 0, 0, 0, 0],
    [1, 1, 1, 1, 1],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 1, 0],
    [1, 0, 0, 0, 1],
  ]
  assert_eq!(count_sub_islands(grid1, grid2), 2)
}
