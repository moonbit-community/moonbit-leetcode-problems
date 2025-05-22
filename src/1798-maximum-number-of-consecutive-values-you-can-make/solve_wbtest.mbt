test "example 1" {
  let coins = [1, 3]
  assert_eq!(max_number_of_consecutive_values_you_can_make(coins), 2)
}

test "example 2" {
  let coins = [1, 1, 1, 4]
  assert_eq!(max_number_of_consecutive_values_you_can_make(coins), 8)
}

test "example 3" {
  let coins = [1, 4, 10, 3, 1]
  assert_eq!(max_number_of_consecutive_values_you_can_make(coins), 20)
}
