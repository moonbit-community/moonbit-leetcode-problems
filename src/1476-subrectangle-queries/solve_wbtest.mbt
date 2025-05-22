///|
test "example 1" {
  let rectangle = [[1, 2, 1], [4, 3, 4], [3, 2, 1], [1, 1, 1]]
  let obj = subrectangle_queries_new(rectangle)
  subrectangle_queries_update_subrectangle(obj, 0, 0, 3, 2, 5)
  assert_eq!(subrectangle_queries_get_value(obj, 0, 2), 5)
  subrectangle_queries_update_subrectangle(obj, 3, 0, 3, 2, 10)
  assert_eq!(subrectangle_queries_get_value(obj, 3, 1), 10)
  assert_eq!(subrectangle_queries_get_value(obj, 0, 2), 5)
}

///|
test "example 2" {
  let rectangle = [[1, 1, 1], [2, 2, 2], [3, 3, 3]]
  let obj = subrectangle_queries_new(rectangle)
  subrectangle_queries_update_subrectangle(obj, 0, 0, 2, 0, 10)
  assert_eq!(subrectangle_queries_get_value(obj, 1, 0), 10)
  subrectangle_queries_update_subrectangle(obj, 1, 1, 2, 2, 5)
  assert_eq!(subrectangle_queries_get_value(obj, 2, 2), 5)
}
