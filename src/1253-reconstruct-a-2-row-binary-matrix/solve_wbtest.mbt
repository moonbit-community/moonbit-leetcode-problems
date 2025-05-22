///|
test "example 1" {
  let upper = 2
  let lower = 1
  let colsum : Array[Int] = [1, 1, 1]
  let expected : Array[Array[Int]] = [[1, 1, 0], [0, 0, 1]]
  assert_eq!(reconstruct_matrix(upper, lower, colsum), expected)
}

///|
test "example 2" {
  let upper = 2
  let lower = 3
  let colsum : Array[Int] = [2, 2, 1, 1]
  let expected : Array[Array[Int]] = [] // Impossible to reconstruct
  assert_eq!(reconstruct_matrix(upper, lower, colsum), expected)
}
