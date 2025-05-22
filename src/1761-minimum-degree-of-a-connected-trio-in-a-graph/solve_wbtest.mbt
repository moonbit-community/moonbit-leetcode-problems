///|
test "example 1" {
  let n = 6
  let edges = [[1, 2], [1, 3], [3, 2], [4, 1], [5, 2], [3, 6]]
  assert_eq!(min_degree_of_connected_trio(n, edges), 3)
}

///|
test "example 2" {
  let n = 7
  let edges = [[1, 3], [4, 1], [4, 3], [2, 5], [5, 6], [6, 7], [7, 5], [2, 6]]
  assert_eq!(min_degree_of_connected_trio(n, edges), 0)
}

///|
test "no trios" {
  let n = 4
  let edges = [[1, 2], [2, 3], [3, 4]]
  assert_eq!(min_degree_of_connected_trio(n, edges), -1)
}

///|
test "large graph" {
  let n = 400
  let edges = Array::make(n * (n - 1) / 2, [0, 0])
  let mut idx = 0
  for i = 1; i <= n; i = i + 1 {
    for j = i + 1; j <= n; j = j + 1 {
      edges[idx] = [i, j]
      idx = idx + 1
    }
  }
  assert_eq!(min_degree_of_connected_trio(n, edges), 397)
}
