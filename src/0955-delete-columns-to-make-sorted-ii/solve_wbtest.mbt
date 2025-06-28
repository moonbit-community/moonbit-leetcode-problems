///|
test "example 1" {
  let a : Array[String] = ["cba", "daf", "ghi"]
  assert_eq(min_deletion_size(a), 1)
}

///|
test "example 2" {
  let a : Array[String] = ["a", "b"]
  assert_eq(min_deletion_size(a), 0)
}

///|
test "example 3" {
  let a : Array[String] = ["zyx", "wvu", "tsr"]
  assert_eq(min_deletion_size(a), 3)
}
