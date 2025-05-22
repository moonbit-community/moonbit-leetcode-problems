test "example 1" {
  let weights = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  let days = 5
  assert_eq!(ship_within_days(weights, days), 15)
}

test "example 2" {
  let weights = [3, 2, 2, 4, 1, 4]
  let days = 3
  assert_eq!(ship_within_days(weights, days), 6)
}

test "example 3" {
  let weights = [1, 2, 3, 1, 1]
  let days = 4
  assert_eq!(ship_within_days(weights, days), 3)
}
