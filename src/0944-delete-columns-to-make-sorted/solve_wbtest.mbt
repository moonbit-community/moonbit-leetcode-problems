///|
test "example 1" {
  assert_eq(min_deletion_size(["cba", "daf", "ghi"]), 1)
}

///|
test "example 2" {
  assert_eq(min_deletion_size(["a", "b"]), 0)
}

///|
test "example 3" {
  assert_eq(min_deletion_size(["zyx", "wvu", "tsr"]), 3)
}
