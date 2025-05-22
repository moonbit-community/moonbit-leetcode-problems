///|
test "example 1" {
  let logs = ["d1/", "d2/", "../", "d21/", "./"]
  assert_eq!(min_operations(logs), 2)
}

///|
test "example 2" {
  let logs = ["d1/", "../", "../", "../"]
  assert_eq!(min_operations(logs), 0)
}
