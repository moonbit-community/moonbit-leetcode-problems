///|
test "example 1" {
  assert_eq!(num_subarray_product_less_than_k([10, 5, 2, 6], 100), 8)
}

///|
test "example 2" {
  assert_eq!(num_subarray_product_less_than_k([1, 2, 3], 0), 0)
}
