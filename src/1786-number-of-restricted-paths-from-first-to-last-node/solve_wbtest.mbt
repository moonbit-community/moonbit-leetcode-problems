///|
test "example 1" {
  let n = 5
  let edges = [
    [1, 2, 3],
    [1, 3, 3],
    [2, 3, 1],
    [1, 4, 2],
    [5, 2, 2],
    [3, 5, 1],
    [5, 4, 10],
  ]
  assert_eq(count_restricted_paths(n, edges), 3)
}

///|
test "example 2" {
  let n = 7
  let edges = [
    [1, 3, 1],
    [4, 1, 2],
    [7, 3, 4],
    [2, 5, 3],
    [5, 6, 1],
    [6, 7, 2],
    [7, 5, 3],
    [2, 6, 4],
  ]
  assert_eq(count_restricted_paths(n, edges), 1)
}
