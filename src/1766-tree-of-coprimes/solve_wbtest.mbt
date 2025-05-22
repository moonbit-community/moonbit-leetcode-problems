///|
test "example 1" {
  let nums = [2, 3, 3, 2]
  let edges = [[0, 1], [1, 2], [1, 3]]
  assert_eq!(tree_of_coprimes(nums, edges), [-1, 0, 0, 1])
}

///|
test "example 2" {
  let nums = [5, 6, 10, 2, 3, 6, 15]
  let edges = [[0, 1], [0, 2], [1, 3], [1, 4], [2, 5], [2, 6]]
  assert_eq!(tree_of_coprimes(nums, edges), [-1, 0, -1, 0, 0, 0, -1])
}
