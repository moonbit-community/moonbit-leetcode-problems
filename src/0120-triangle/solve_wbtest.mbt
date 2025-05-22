test "example 1" {
  let triangle : Array[Array[Int]] = [[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]
  let result = minimum_total(triangle)
  assert_eq!(result, 11)
}
