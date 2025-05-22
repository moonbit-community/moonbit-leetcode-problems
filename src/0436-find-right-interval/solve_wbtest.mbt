test "example 1" {
  let intervals : Array[Array[Int]] = [[1, 2]]
  let expected : Array[Int] = [-1]
  assert_eq!(find_right_interval(intervals), expected)
}

test "example 2" {
  let intervals : Array[Array[Int]] = [[3, 4], [2, 3], [1, 2]]
  let expected : Array[Int] = [-1, 0, 1]
  assert_eq!(find_right_interval(intervals), expected)
}

test "example 3" {
  let intervals : Array[Array[Int]] = [[1, 4], [2, 3], [3, 4]]
  let expected : Array[Int] = [-1, 2, -1]
  assert_eq!(find_right_interval(intervals), expected)
}
