///|
test "example 1" {
  let candies_count = [7, 4, 5, 3, 8]
  let queries = [[0, 2, 2], [4, 2, 4], [2, 13, 1000000000]]
  let expected = [true, false, true]
  assert_eq!(
    can_eat_favorite_candy_on_favorite_day(candies_count, queries),
    expected,
  )
}

///|
test "example 2" {
  let candies_count = [5, 2, 6, 4, 1]
  let queries = [[3, 1, 2], [4, 10, 3], [3, 10, 100], [4, 100, 30], [1, 3, 1]]
  let expected = [false, true, true, false, false]
  assert_eq!(
    can_eat_favorite_candy_on_favorite_day(candies_count, queries),
    expected,
  )
}
