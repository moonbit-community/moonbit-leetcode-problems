test "example 1" {
  let nums : Array[Int] = [1, 2, 3, 4]
  assert_eq!(number_of_arithmetic_slices(nums), 3)
}

test "example 2" {
  let nums : Array[Int] = [1]
  assert_eq!(number_of_arithmetic_slices(nums), 0)
}
