///|
test "example 1" {
  let stones : Array[Int] = [3, 2, 4, 1]
  let big_k = 2
  assert_eq!(merge_stones(stones, big_k), 20)
}

///|
test "example 2" {
  let stones : Array[Int] = [3, 5, 1, 2, 6]
  let big_k = 3
  assert_eq!(merge_stones(stones, big_k), 25)
}
