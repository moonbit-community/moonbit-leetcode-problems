///|
test "example 1" {
  assert_eq!(diet_plan_performance([1, 2, 3, 4, 5], 1, 3, 3), 0)
}

///|
test "example 2" {
  assert_eq!(diet_plan_performance([3, 2], 2, 0, 1), 1)
}

///|
test "example 3" {
  assert_eq!(diet_plan_performance([6, 5, 0, 0], 2, 1, 5), 0)
}
