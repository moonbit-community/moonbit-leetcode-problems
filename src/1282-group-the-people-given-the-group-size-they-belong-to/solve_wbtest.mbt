///|
test "example 1" {
  let group_sizes = [3, 3, 3, 3, 3, 1, 3]
  let expected = [[5], [0, 1, 2], [3, 4, 6]]
  assert_eq!(group_the_people(group_sizes), expected)
}

///|
test "example 2" {
  let group_sizes = [2, 1, 3, 3, 3, 2]
  let expected = [[1], [0, 5], [2, 3, 4]]
  assert_eq!(group_the_people(group_sizes), expected)
}
