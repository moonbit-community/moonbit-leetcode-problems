test "example 1" {
  let mat : Array[Array[Int]] = [[1, 3, 11], [2, 4, 6]]
  let k = 5
  assert_eq!(kth_smallest(mat, k), 7)
}

test "example 2" {
  let mat : Array[Array[Int]] = [[1, 10, 10], [1, 4, 5], [2, 3, 6]]
  let k = 7
  assert_eq!(kth_smallest(mat, k), 9)
}

test "example 3" {
  let mat : Array[Array[Int]] = [[1, 1, 10], [2, 2, 9]]
  let k = 7
  assert_eq!(kth_smallest(mat, k), 12)
}
