test "example 1" {
  let nums = [2, 3, 4, 6]
  assert_eq!(tuple_with_same_product(nums), 8)
}

test "example 2" {
  let nums = [1, 2, 4, 5, 10]
  assert_eq!(tuple_with_same_product(nums), 16)
}

test "example 3" {
  let nums = [2, 4, 8, 16]
  assert_eq!(tuple_with_same_product(nums), 24)
}

test "example 4" {
  let nums = [1, 3, 5, 15, 25, 75]
  assert_eq!(tuple_with_same_product(nums), 48)
}
