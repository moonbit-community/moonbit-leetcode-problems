///|
test "example 1" {
  let servers = [3, 3, 2]
  let tasks = [1, 2, 3, 2, 1, 2]
  assert_eq(process_tasks_using_servers(servers, tasks), [2, 2, 0, 2, 1, 2])
}

///|
test "example 2" {
  let servers = [5, 1, 4, 3, 2]
  let tasks = [2, 1, 2, 4, 5, 2, 1]
  assert_eq(process_tasks_using_servers(servers, tasks), [1, 4, 1, 4, 1, 3, 2])
}
