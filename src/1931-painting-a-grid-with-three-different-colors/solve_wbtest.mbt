///|
test "example 1" {
  let m = 1
  let n = 1
  assert_eq(paint_grid(m, n), 3)
}

///|
test "example 2" {
  let m = 1
  let n = 2
  assert_eq(paint_grid(m, n), 6)
}

///|
test "example 3" {
  let m = 5
  let n = 5
  assert_eq(paint_grid(m, n), 580986)
}
