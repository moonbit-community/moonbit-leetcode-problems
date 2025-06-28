///|
test "example 1" {
  let candies = [2, 3, 5, 1, 3]
  let extra_candies = 3
  let expected = [true, true, true, false, true]
  assert_eq(kids_with_candies(candies, extra_candies), expected)
}

///|
test "example 2" {
  let candies = [4, 2, 1, 1, 2]
  let extra_candies = 1
  let expected = [true, false, false, false, false]
  assert_eq(kids_with_candies(candies, extra_candies), expected)
}
