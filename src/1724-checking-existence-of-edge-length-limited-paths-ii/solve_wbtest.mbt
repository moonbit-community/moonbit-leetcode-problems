///|
test "example 1" {
  let dlpe = new_distance_limited_paths_exist(6, [
    [0, 2, 4],
    [0, 3, 2],
    [1, 2, 3],
    [2, 3, 1],
    [4, 5, 5],
  ])
  assert_eq(query(dlpe, 2, 3, 2), true)
  assert_eq(query(dlpe, 1, 3, 3), false)
  assert_eq(query(dlpe, 2, 0, 3), true)
  assert_eq(query(dlpe, 0, 5, 6), false)
}
