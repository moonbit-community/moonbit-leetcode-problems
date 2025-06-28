///|
test "example 1" {
  let accounts = [[1, 2, 3], [3, 2, 1]]
  assert_eq(maximum_wealth(accounts), 6)
}

///|
test "example 2" {
  let accounts = [[1, 5], [7, 3], [3, 5]]
  assert_eq(maximum_wealth(accounts), 10)
}

///|
test "example 3" {
  let accounts = [[2, 8, 7], [7, 1, 3], [1, 9, 5]]
  assert_eq(maximum_wealth(accounts), 17)
}
