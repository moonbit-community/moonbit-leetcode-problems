///|
test "example 1" {
  let n = 4
  let edges = [[1, 2], [2, 4], [1, 3], [2, 3], [2, 1]]
  let queries = [2, 3]
  let expected = [6, 5]
  assert_eq!(count_pairs_of_nodes(n, edges, queries), expected)
}

///|
test "example 2" {
  let n = 5
  let edges = [[1, 5], [1, 5], [3, 4], [2, 5], [1, 3], [5, 1], [2, 3], [2, 5]]
  let queries = [1, 2, 3, 4, 5]
  let expected = [10, 10, 9, 8, 6]
  assert_eq!(count_pairs_of_nodes(n, edges, queries), expected)
}
