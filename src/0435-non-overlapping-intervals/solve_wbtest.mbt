///|
test "erase_overlap_intervals test 1" {
  let intervals = [[1, 2], [2, 3], [3, 4], [1, 3]]
  assert_eq(erase_overlap_intervals(intervals), 1)
}

///|
test "erase_overlap_intervals test 2" {
  let intervals = [[1, 2], [1, 2], [1, 2]]
  assert_eq(erase_overlap_intervals(intervals), 2)
}

///|
test "erase_overlap_intervals test 3" {
  let intervals = [[1, 2], [2, 3]]
  assert_eq(erase_overlap_intervals(intervals), 0)
}
