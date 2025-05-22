test "example 1" {
  let target : Array[Int] = [1, 2, 3, 2, 1]
  assert_eq!(min_number_operations(target), 3)
}

test "example 2" {
  let target : Array[Int] = [3, 1, 5, 4, 2]
  assert_eq!(min_number_operations(target), 7)
}

test "example 3" {
  let target : Array[Int] = [1, 1, 1, 1]
  assert_eq!(min_number_operations(target), 1)
}
