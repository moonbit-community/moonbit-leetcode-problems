test "example 1" {
  let nums = [1, 2, 3, 4, 5]
  assert_eq!(increasing_triplet(nums), true)
}

test "example 2" {
  let nums = [5, 4, 3, 2, 1]
  assert_eq!(increasing_triplet(nums), false)
}

test "example 3" {
  let nums = [2, 1, 5, 0, 4, 6]
  assert_eq!(increasing_triplet(nums), true)
}
