///|
test "example 1" {
  let pairs = [[1, 2], [2, 3]]
  assert_eq(number_of_ways_to_reconstruct_a_tree(pairs), 1)
}

///|
test "example 2" {
  let pairs = [[1, 2], [2, 3], [1, 3]]
  assert_eq(number_of_ways_to_reconstruct_a_tree(pairs), 2)
}

///|
test "example 3" {
  let pairs = [[1, 2], [2, 3], [2, 4], [1, 5]]
  assert_eq(number_of_ways_to_reconstruct_a_tree(pairs), 0)
}
