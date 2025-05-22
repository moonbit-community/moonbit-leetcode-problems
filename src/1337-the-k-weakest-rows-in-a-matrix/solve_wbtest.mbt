///|
test "example 1" {
  let mat : Array[Array[Int]] = [
    [1, 1, 0, 0, 0],
    [1, 1, 1, 1, 0],
    [1, 0, 0, 0, 0],
    [1, 1, 0, 0, 0],
    [1, 1, 1, 1, 1],
  ]
  let k = 3
  let expected : Array[Int] = [2, 0, 3]
  assert_eq!(k_weakest_rows(mat, k), expected)
}

///|
test "example 2" {
  let mat : Array[Array[Int]] = [
    [1, 0, 0, 0],
    [1, 1, 1, 1],
    [1, 0, 0, 0],
    [1, 0, 0, 0],
  ]
  let k = 2
  let expected : Array[Int] = [0, 2]
  assert_eq!(k_weakest_rows(mat, k), expected)
}
