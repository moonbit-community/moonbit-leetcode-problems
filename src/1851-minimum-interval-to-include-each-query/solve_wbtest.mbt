///|
test "example 1" {
  let intervals1 = [[1, 4], [2, 4], [3, 6], [4, 4]]
  let queries1 = [2, 3, 4, 5]
  let expected1 = [3, 3, 1, 4]
  assert_eq!(
    min_interval_to_include_each_query(intervals1, queries1),
    expected1,
  )
}

///|
test "example 2" {
  let intervals2 = [[2, 3], [2, 5], [1, 8], [20, 25]]
  let queries2 = [2, 19, 5, 22]
  let expected2 = [2, -1, 4, 6]
  assert_eq!(
    min_interval_to_include_each_query(intervals2, queries2),
    expected2,
  )
}
