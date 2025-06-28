///|
test "example 1" {
  let queries = [[2, 6], [5, 1], [73, 660]]
  let expected = [4, 1, 50734910]
  assert_eq(count_ways_to_make_array_with_product(queries), expected)
}

///|
test "example 2" {
  let queries = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]
  let expected = [1, 2, 3, 10, 5]
  assert_eq(count_ways_to_make_array_with_product(queries), expected)
}
