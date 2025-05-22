///|
test "example 1" {
  let result = rob([2, 3, 2])
  assert_eq!(result, 3)
}

///|
test "example 2" {
  let result = rob([1, 2, 3, 1])
  assert_eq!(result, 4)
}

///|
test "example 3" {
  let result = rob([0])
  assert_eq!(result, 0)
}
