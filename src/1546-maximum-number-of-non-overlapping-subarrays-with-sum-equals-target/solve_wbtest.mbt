test "example 1" {
  let nums : Array[Int] = [1, 0, -1, 0, -2, 2]
  let target = 0
  assert_eq!(max_non_overlapping(nums, target), 3)
}

test "example 2" {
  let nums : Array[Int] = [-1, 3, 5, 1, 4, 2, -9]
  let target = 6
  assert_eq!(max_non_overlapping(nums, target), 2)
}
