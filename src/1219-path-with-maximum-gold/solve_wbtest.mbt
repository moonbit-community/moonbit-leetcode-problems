///|
test "example 1" {
  let grid : Array[Array[Int]] = [[0, 6, 0], [5, 8, 7], [0, 9, 0]]
  assert_eq!(get_maximum_gold(grid), 24)
}

///|
test "example 2" {
  let grid : Array[Array[Int]] = [
    [1, 0, 7],
    [2, 0, 6],
    [3, 4, 5],
    [0, 3, 0],
    [9, 0, 20],
  ]
  assert_eq!(get_maximum_gold(grid), 28)
}
