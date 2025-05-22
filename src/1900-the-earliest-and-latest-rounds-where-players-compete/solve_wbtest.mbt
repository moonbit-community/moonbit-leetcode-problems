test "example 1" {
  let result = find_earliest_latest_rounds(11, 2, 4)
  inspect!(result)
}

test "example 2" {
  let result = find_earliest_latest_rounds(5, 1, 5)
  inspect!(result)
}
