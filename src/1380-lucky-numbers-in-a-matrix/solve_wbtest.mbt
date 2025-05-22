///|
test "example 1" {
  let matrix : Array[Array[Int]] = [[3, 7, 8], [9, 11, 13], [15, 16, 17]]
  let expected : Array[Int] = [15]
  assert_eq!(lucky_numbers(matrix), expected)
}

///|
test "example 2" {
  let matrix : Array[Array[Int]] = [
    [1, 10, 4, 2],
    [9, 3, 8, 7],
    [15, 16, 17, 12],
  ]
  let expected : Array[Int] = [12]
  assert_eq!(lucky_numbers(matrix), expected)
}
