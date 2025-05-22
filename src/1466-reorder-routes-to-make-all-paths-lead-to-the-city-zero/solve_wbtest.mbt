///|
test "example 1" {
  let connections : Array[(Int, Int)] = [(0, 1), (1, 3), (2, 3), (4, 0), (4, 5)]
  assert_eq!(min_reorder(6, connections), 3)
}

///|
test "example 2" {
  let connections : Array[(Int, Int)] = [(1, 0), (1, 2), (3, 2), (3, 4)]
  assert_eq!(min_reorder(5, connections), 2)
}
