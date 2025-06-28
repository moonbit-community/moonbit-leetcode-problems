///|
test "example 1" {
  let solution = Solution::{ p: Array::make(20020, 0) }
  let stones : Array[Array[Int]] = [
    [0, 0],
    [0, 1],
    [1, 0],
    [1, 2],
    [2, 1],
    [2, 2],
  ]
  assert_eq(solution.remove_stones(stones), 5)
}

///|
test "example 2" {
  let solution = Solution::{ p: Array::make(20020, 0) }
  let stones : Array[Array[Int]] = [[0, 0], [0, 2], [1, 1], [2, 0], [2, 2]]
  assert_eq(solution.remove_stones(stones), 3)
}

///|
test "example 3" {
  let solution = Solution::{ p: Array::make(20020, 0) }
  let stones : Array[Array[Int]] = [[0, 0]]
  assert_eq(solution.remove_stones(stones), 0)
}
