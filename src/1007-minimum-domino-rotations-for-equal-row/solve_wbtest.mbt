///|
test "example 1" {
  let tops = [2, 1, 2, 4, 2, 2]
  let bottoms = [5, 2, 6, 2, 3, 2]
  assert_eq(min_domino_rotations(tops, bottoms), 2)
}

///|
test "example 2" {
  let tops = [3, 5, 1, 2, 3]
  let bottoms = [3, 6, 3, 3, 4]
  assert_eq(min_domino_rotations(tops, bottoms), -1)
}
