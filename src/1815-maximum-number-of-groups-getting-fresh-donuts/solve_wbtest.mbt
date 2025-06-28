///|
test "example 1" {
  let batch_size = 3
  let groups = [1, 2, 3, 4, 5, 6]
  assert_eq(max_happy_groups(batch_size, groups), 4)
}

///|
test "example 2" {
  let batch_size = 4
  let groups = [1, 3, 2, 5, 2, 2, 1, 6]
  assert_eq(max_happy_groups(batch_size, groups), 4)
}
