///|
test "example_1" {
  let n = "99"
  let x = 9
  assert_eq(max_value_after_insertion(n, x), "999")
}

///|
test "example_2" {
  let n = "-13"
  let x = 2
  assert_eq(max_value_after_insertion(n, x), "-123")
}

///|
test "positive_number" {
  let n = "73"
  let x = 6
  assert_eq(max_value_after_insertion(n, x), "763")
}

///|
test "negative_number" {
  let n = "-55"
  let x = 2
  assert_eq(max_value_after_insertion(n, x), "-255")
}

///|
test "large_number" {
  let n = "123456789"
  let x = 5
  assert_eq(max_value_after_insertion(n, x), "5123456789")
}

///|
test "large_negative_number" {
  let n = "-123456789"
  let x = 5
  assert_eq(max_value_after_insertion(n, x), "-1234556789")
}
