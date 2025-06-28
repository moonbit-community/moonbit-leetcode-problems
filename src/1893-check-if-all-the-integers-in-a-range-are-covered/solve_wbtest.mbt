///|
test "example 1" {
  let ranges = [[1, 2], [3, 4], [5, 6]]
  let left = 2
  let right = 5
  assert_eq(is_range_covered(ranges, left, right), true)
}

///|
test "example 2" {
  let ranges = [[1, 10], [10, 20]]
  let left = 21
  let right = 21
  assert_eq(is_range_covered(ranges, left, right), false)
}

///|
test "example 3" {
  let ranges = [[1, 5], [6, 10], [11, 15]]
  let left = 5
  let right = 10
  assert_eq(is_range_covered(ranges, left, right), true)
}

///|
test "example 4" {
  let ranges = [[1, 5], [6, 10], [11, 15]]
  let left = 16
  let right = 20
  assert_eq(is_range_covered(ranges, left, right), false)
}

///|
test "example 5" {
  let ranges = [[1, 50]]
  let left = 1
  let right = 50
  assert_eq(is_range_covered(ranges, left, right), true)
}
