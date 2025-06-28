///|
test "example 1" {
  let card_points = [1, 2, 3, 4, 5, 6, 1]
  let k = 3
  assert_eq(max_score(card_points, k), 12)
}

///|
test "example 2" {
  let card_points = [9, 7, 7, 9, 7, 7, 9]
  let k = 7
  assert_eq(max_score(card_points, k), 55)
}

///|
test "example 3" {
  let card_points = [1, 1000, 1]
  let k = 1
  assert_eq(max_score(card_points, k), 1)
}
