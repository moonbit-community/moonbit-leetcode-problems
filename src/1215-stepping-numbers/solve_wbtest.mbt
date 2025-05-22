///|
test "example 1" {
  assert_eq!(count_stepping_numbers(0, 21), [
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 21,
  ])
}

///|
test "example 2" {
  assert_eq!(count_stepping_numbers(10, 15), [10, 12])
}
