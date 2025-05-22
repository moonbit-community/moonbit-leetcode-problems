test "example 1" {
  let column_number = 1
  let title = convert_to_title(column_number)
  assert_eq!(title, "A")
}

test "example 2" {
  let column_number = 28
  let title = convert_to_title(column_number)
  assert_eq!(title, "AB")
}

test "example 3" {
  let column_number = 701
  let title = convert_to_title(column_number)
  assert_eq!(title, "ZY")
}
