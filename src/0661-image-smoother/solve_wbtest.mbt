///|
test "example 1" {
  let img = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
  let expected = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
  assert_eq(image_smoother(img), expected)
}

///|
test "example 2" {
  let img = [[100, 200, 100], [200, 50, 200], [100, 200, 100]]
  let expected = [[137, 141, 137], [141, 138, 141], [137, 141, 137]]
  assert_eq(image_smoother(img), expected)
}
