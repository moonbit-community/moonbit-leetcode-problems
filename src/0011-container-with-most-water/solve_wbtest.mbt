///|
test "example 1" {
  let height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
  assert_eq!(max_area(height), 49)
}

///|
test "example 2" {
  let height = [1, 1]
  assert_eq!(max_area(height), 1)
}

///|
test "example 3" {
  let height = [4, 3, 2, 1, 4]
  assert_eq!(max_area(height), 16)
}

///|
test "example 4" {
  let height = [1, 2, 1]
  assert_eq!(max_area(height), 2)
}

///|
test "example 5" {
  let height = [2, 3, 10, 5, 7, 8, 9]
  assert_eq!(max_area(height), 36)
}
