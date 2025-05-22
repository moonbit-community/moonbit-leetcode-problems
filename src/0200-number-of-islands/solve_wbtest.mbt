///|
test "example 1" {
  let grid : Array[Array[String]] = [
    ["1", "1", "1", "1", "0"],
    ["1", "1", "0", "1", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "0", "0", "0"],
  ]
  let result = num_islands(grid)
  assert_eq!(result, 1)
}

///|
test "example 2" {
  let grid : Array[Array[String]] = [
    ["1", "1", "0", "0", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "1", "0", "0"],
    ["0", "0", "0", "1", "1"],
  ]
  let result = num_islands(grid)
  assert_eq!(result, 3)
}
