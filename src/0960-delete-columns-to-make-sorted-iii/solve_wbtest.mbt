///|
test "example 1" {
  let strs : Array[String] = ["cba", "daf", "ghi"]
  assert_eq(min_deletion_size(strs), 1)
}

///|
test "example 2" {
  let strs : Array[String] = ["a", "b"]
  assert_eq(min_deletion_size(strs), 0)
}

///|
test "example 3" {
  let strs : Array[String] = ["zyx", "wvu", "tsr"]
  assert_eq(min_deletion_size(strs), 3)
}
