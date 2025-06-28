///|
test "example 1" {
  let cuts = [1, 3, 4, 5]
  let n = 7
  assert_eq(min_cost(n, cuts), 16)
}

///|
test "example 2" {
  let cuts = [3, 5, 1, 4]
  let n = 7
  assert_eq(min_cost(n, cuts), 16)
}
