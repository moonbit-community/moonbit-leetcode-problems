///|
test "example 1" {
  assert_eq!(compare_version("1.01", "1.001"), 0)
}

///|
test "example 2" {
  assert_eq!(compare_version("1.0", "1.0.0"), 0)
}

///|
test "example 3" {
  assert_eq!(compare_version("0.1", "1.1"), -1)
}

///|
test "example 4" {
  assert_eq!(compare_version("1.0.1", "1"), 1)
}

///|
test "example 5" {
  assert_eq!(compare_version("7.5.2.4", "7.5.3"), -1)
}
