///|
test "example 1" {
  let nums : Array[Int] = [2, 4, 6, 8, 10]
  assert_eq!(number_of_arithmetic_slices(nums), 7)
}

///|
test "example 2" {
  let nums : Array[Int] = [7, 7, 7, 7, 7]
  assert_eq!(number_of_arithmetic_slices(nums), 16)
}
