///|
test "example 1" {
  assert_eq!(merge([[1, 3], [2, 6], [8, 10], [15, 18]]), [
    [1, 6],
    [8, 10],
    [15, 18],
  ])
}

///|
test "example 2" {
  assert_eq!(merge([[1, 4], [4, 5]]), [[1, 5]])
}
