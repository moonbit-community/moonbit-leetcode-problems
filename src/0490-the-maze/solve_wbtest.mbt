///|
test "example 1" {
  let maze : Array[Array[Int]] = [
    [0, 0, 1, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0],
    [1, 1, 0, 1, 1],
    [0, 0, 0, 0, 0],
  ]
  let start : Array[Int] = [0, 4]
  let destination : Array[Int] = [4, 4]
  @test.is_true!(has_path(maze, start, destination))
}

///|
test "example 2" {
  let maze : Array[Array[Int]] = [
    [0, 0, 1, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0],
    [1, 1, 0, 1, 1],
    [0, 0, 0, 0, 0],
  ]
  let start : Array[Int] = [0, 4]
  let destination : Array[Int] = [3, 2]
  @test.is_false!(has_path(maze, start, destination))
}
