///|
test "example 1" {
  let tasks = [[1, 2], [2, 4], [3, 2], [4, 1]]
  assert_eq!(single_threaded_cpu(tasks), [0, 2, 3, 1])
}

///|
test "example 2" {
  let tasks = [[7, 10], [7, 12], [7, 5], [7, 4], [7, 2]]
  assert_eq!(single_threaded_cpu(tasks), [4, 3, 2, 0, 1])
}
