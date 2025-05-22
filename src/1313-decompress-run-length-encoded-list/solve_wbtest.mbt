test "example 1" {
  let nums = [1, 2, 3, 4]
  let expected = [2, 4, 4, 4]
  assert_eq!(decompress_rle_list(nums), expected)
}

test "example 2" {
  let nums = [1, 1, 2, 3]
  let expected = [1, 3, 3]
  assert_eq!(decompress_rle_list(nums), expected)
}
