test "example 1" {
  assert_eq!(num_friend_requests([16, 16]), 2)
}

test "example 2" {
  assert_eq!(num_friend_requests([16, 17, 18]), 2)
}

test "example 3" {
  assert_eq!(num_friend_requests([20, 30, 100, 110, 120]), 3)
}
