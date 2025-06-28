///|
test "test 1" {
  assert_eq(is_robot_bounded("GGLLGG"), true)
}

///|
test "test 2" {
  assert_eq(is_robot_bounded("GG"), false)
}

///|
test "test 3" {
  assert_eq(is_robot_bounded("GL"), true)
}
