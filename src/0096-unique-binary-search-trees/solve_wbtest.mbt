test "example 1" {
  let n = 3
  let result = num_trees(n)
  assert_eq!(result, 5)
}

test "example 2" {
  let n = 1
  let result = num_trees(n)
  assert_eq!(result, 1)
}
