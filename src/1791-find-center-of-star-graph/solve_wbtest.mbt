test "example 1" {
  let edges = Array::make(3, Array::make(2, 0))
  edges[0] = [1, 2]
  edges[1] = [2, 3]
  edges[2] = [4, 2]
  assert_eq!(find_center(edges), 2)
}

test "example 2" {
  let edges = Array::make(4, Array::make(2, 0))
  edges[0] = [1, 2]
  edges[1] = [5, 1]
  edges[2] = [1, 3]
  edges[3] = [1, 4]
  assert_eq!(find_center(edges), 1)
}
