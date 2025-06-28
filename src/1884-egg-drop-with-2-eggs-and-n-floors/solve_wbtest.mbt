///|
test "example 1" {
  assert_eq(min_drops_required(2), 2)
}

///|
test "example 2" {
  assert_eq(min_drops_required(100), 14)
}

///|
test "example 3" {
  assert_eq(min_drops_required(1), 1)
}

///|
test "example 4" {
  assert_eq(min_drops_required(10), 4)
}

///|
test "example 5" {
  assert_eq(min_drops_required(1000), 45)
}
