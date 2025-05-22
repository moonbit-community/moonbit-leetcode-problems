///|
test "example_1" {
  assert_eq!(sum_game("5023"), false)
}

///|
test "example_2" {
  assert_eq!(sum_game("25??"), true)
}

///|
test "example_3" {
  assert_eq!(sum_game("?3295???"), false)
}

///|
test "additional_test_1" {
  assert_eq!(sum_game("12345678"), false)
}

///|
test "additional_test_2" {
  assert_eq!(sum_game("123?567?"), true)
}

///|
test "additional_test_3" {
  assert_eq!(sum_game("????????"), true)
}
