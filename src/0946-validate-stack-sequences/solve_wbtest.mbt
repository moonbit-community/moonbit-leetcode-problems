///|
test "example 1" {
  let pushed = [1, 2, 3, 4, 5]
  let popped = [4, 5, 3, 2, 1]
  assert_eq!(validate_stack_sequences(pushed, popped), true)
}

///|
test "example 2" {
  let pushed = [1, 2, 3, 4, 5]
  let popped = [4, 3, 5, 1, 2]
  assert_eq!(validate_stack_sequences(pushed, popped), false)
}
