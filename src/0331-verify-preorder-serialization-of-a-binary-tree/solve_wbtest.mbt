test "example 1" {
  assert_eq!(is_valid_serialization("9,3,4,#,#,1,#,#,2,#,6,#,#"), true)
}

test "example 2" {
  assert_eq!(is_valid_serialization("1,#"), false)
}

test "example 3" {
  assert_eq!(is_valid_serialization("9,#,#,1"), false)
}
