test "example 1" {
  assert_eq!(search_insert([1, 3, 5, 6], 5), 2)
}

test "example 2" {
  assert_eq!(search_insert([1, 3, 5, 6], 2), 1)
}

test "example 3" {
  assert_eq!(search_insert([1, 3, 5, 6], 7), 4)
}

test "example 4" {
  assert_eq!(search_insert([1, 3, 5, 6], 0), 0)
}

test "example 5" {
  assert_eq!(search_insert([1], 0), 0)
}

test "insert in the middle" {
  assert_eq!(search_insert([1, 2, 4, 5], 3), 2)
}

test "insert at the end" {
  assert_eq!(search_insert([1, 2, 3, 4], 10), 4)
}
