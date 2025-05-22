test "example 1" {
  let rating = [2, 5, 3, 4, 1]
  assert_eq!(num_teams(rating), 3)
}

test "example 2" {
  let rating = [2, 1, 3]
  assert_eq!(num_teams(rating), 0)
}

test "example 3" {
  let rating = [1, 2, 3, 4]
  assert_eq!(num_teams(rating), 4)
}
