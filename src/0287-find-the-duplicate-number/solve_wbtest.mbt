test "example 1" {
  let nums : Array[Int] = [1, 3, 4, 2, 2]
  let duplicate = find_duplicate(nums)
  assert_eq!(duplicate, 2)
}

test "example 2" {
  let nums : Array[Int] = [3, 1, 3, 4, 2]
  let duplicate = find_duplicate(nums)
  assert_eq!(duplicate, 3)
}
