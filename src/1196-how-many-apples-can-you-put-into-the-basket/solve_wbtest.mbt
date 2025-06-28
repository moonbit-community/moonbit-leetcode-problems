///|
test "example 1" {
  assert_eq(max_number_of_apples(@immut/list.of([100, 200, 150, 1000, 500])), 4)
}

///|
test "example 2" {
  assert_eq(
    max_number_of_apples(@immut/list.of([900, 950, 800, 1000, 700, 800])),
    5,
  )
}
