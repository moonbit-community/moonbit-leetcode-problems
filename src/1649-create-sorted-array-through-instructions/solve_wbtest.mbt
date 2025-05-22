///|
test "example 1" {
  let instructions = [1, 5, 6, 2]
  assert_eq!(create_sorted_array(instructions), 1)
}

///|
test "example 2" {
  let instructions = [1, 2, 3, 6, 5, 4]
  assert_eq!(create_sorted_array(instructions), 3)
}
