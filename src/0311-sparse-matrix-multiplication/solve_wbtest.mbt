///|
test "example 1" {
  let mat1 : Array[Array[Int]] = [[1, 0, 0], [-1, 0, 3]]
  let result = multiply(mat1, [[7, 0, 0], [0, 0, 0], [0, 0, 1]])
  assert_eq!(result, [[7, 0, 0], [-7, 0, 3]])
}

///|
test "example 2" {
  let mat1 : Array[Array[Int]] = [[0]]
  let result = multiply(mat1, [[0]])
  assert_eq!(result, [[0]])
}
