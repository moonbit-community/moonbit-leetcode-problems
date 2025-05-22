///|
test "example 1" {
  assert_eq!(max_depth_after_split("(()())"), [0, 1, 1, 1, 1, 0])
}

///|
test "example 2" {
  assert_eq!(max_depth_after_split("()(())()"), [0, 0, 0, 1, 1, 0, 1, 1])
}
