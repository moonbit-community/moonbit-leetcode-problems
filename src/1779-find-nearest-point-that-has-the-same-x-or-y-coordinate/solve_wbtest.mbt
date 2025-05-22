test "example 1" {
  let x = 3
  let y = 4
  let points = [[1, 2], [3, 1], [2, 4], [2, 3], [4, 4]]
  assert_eq!(find_nearest_point(x, y, points), 2)
}

test "example 2" {
  let x = 3
  let y = 4
  let points = [[3, 4]]
  assert_eq!(find_nearest_point(x, y, points), 0)
}

test "example 3" {
  let x = 3
  let y = 4
  let points = [[2, 3]]
  assert_eq!(find_nearest_point(x, y, points), -1)
}
