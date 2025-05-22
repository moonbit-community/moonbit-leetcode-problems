test "example 1" {
  let nums : Array[Int] = [2, 1, 3]
  assert_eq!(count_triplets(nums), 12)
}

test "example 2" {
  let nums : Array[Int] = [1, 2, 3, 4]
  assert_eq!(count_triplets(nums), 28)
}
