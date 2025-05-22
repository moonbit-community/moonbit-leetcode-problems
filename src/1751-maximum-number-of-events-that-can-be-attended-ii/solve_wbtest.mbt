test "example 1" {
  let events = [[1, 2, 4], [3, 4, 3], [2, 3, 1]]
  let k = 2
  assert_eq!(max_value(events, k), 7)
}

test "example 2" {
  let events = [[1, 2, 4], [3, 4, 3], [2, 3, 10]]
  let k = 2
  assert_eq!(max_value(events, k), 10)
}

test "example 3" {
  let events = [[1, 1, 1], [2, 2, 2], [3, 3, 3], [4, 4, 4]]
  let k = 3
  assert_eq!(max_value(events, k), 9)
}
