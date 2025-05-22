test "example 1" {
  let nums = [5, 6, 2, 7, 4]
  assert_eq!(maximum_product_difference(nums), 34)
}

test "example 2" {
  let nums = [4, 2, 5, 9, 7, 4, 8]
  assert_eq!(maximum_product_difference(nums), 64)
}

test "example with negative numbers" {
  let nums = [-1, -2, -3, -4]
  assert_eq!(maximum_product_difference(nums), 2)
}

test "example with all positive numbers" {
  let nums = [1, 2, 3, 4]
  assert_eq!(maximum_product_difference(nums), 12)
}

test "example with mixed numbers" {
  let nums = [1, -2, 3, -4, 5]
  assert_eq!(maximum_product_difference(nums), 23)
}
