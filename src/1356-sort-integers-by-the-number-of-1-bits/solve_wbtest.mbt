///|
test "example 1" {
  assert_eq!(sort_by_bits([0, 1, 2, 3, 4, 5, 6, 7, 8]), [
    0, 1, 2, 4, 8, 3, 5, 6, 7,
  ])
}

///|
test "example 2" {
  assert_eq!(sort_by_bits([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]), [
    1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024,
  ])
}

///|
test "example 3" {
  assert_eq!(sort_by_bits([10000, 10000]), [10000, 10000])
}

///|
test "example 4" {
  assert_eq!(sort_by_bits([2, 3, 5, 7, 11, 13, 17, 19]), [
    2, 3, 5, 17, 7, 11, 13, 19,
  ])
}

///|
test "example 5" {
  assert_eq!(sort_by_bits([10, 100, 1000, 10000]), [10, 100, 10000, 1000])
}
