///|
test "example 1" {
  assert_eq!(latest_time_by_replacing_hidden_digits("2?:?0"), "23:50")
}

///|
test "example 2" {
  assert_eq!(latest_time_by_replacing_hidden_digits("0?:3?"), "09:39")
}

///|
test "example 3" {
  assert_eq!(latest_time_by_replacing_hidden_digits("1?:22"), "19:22")
}
