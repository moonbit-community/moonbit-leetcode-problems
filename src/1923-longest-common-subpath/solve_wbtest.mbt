///|
test "example_1" {
  let n = 5
  let paths = [[0, 1, 2, 3, 4], [2, 3, 4], [4, 0, 1, 2, 3]]
  assert_eq!(longest_common_subpath(n, paths), 2)
}

///|
test "example_2" {
  let n = 3
  let paths = [[0], [1], [2]]
  assert_eq!(longest_common_subpath(n, paths), 0)
}

///|
test "example_3" {
  let n = 5
  let paths = [[0, 1, 2, 3, 4], [4, 3, 2, 1, 0]]
  assert_eq!(longest_common_subpath(n, paths), 1)
}
