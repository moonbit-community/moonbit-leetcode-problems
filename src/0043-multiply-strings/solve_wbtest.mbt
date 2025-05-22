test "example 1" {
  assert_eq!(multiply("2", "3"), "6")
}

test "example 2" {
  assert_eq!(multiply("123", "456"), "56088")
}

test "example 3" {
  assert_eq!(multiply("0", "123456789"), "0")
}
