test "example 1" {
  let digits = [8, 1, 9]
  assert_eq!(largest_multiple_of_three(digits), "981")
}

test "example 2" {
  let digits = [8, 6, 7, 1, 0]
  assert_eq!(largest_multiple_of_three(digits), "8760")
}

test "example 3" {
  let digits = [1]
  assert_eq!(largest_multiple_of_three(digits), "")
}
