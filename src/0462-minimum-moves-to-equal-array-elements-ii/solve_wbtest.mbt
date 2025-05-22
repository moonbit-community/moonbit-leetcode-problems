test "example 1" {
  let nums : Array[Int] = [1, 2, 3]
  assert_eq!(min_moves2(nums), 2)
}

test "example 2" {
  let nums : Array[Int] = [1, 10, 2, 9]
  assert_eq!(min_moves2(nums), 16)
}
