test "example 1" {
  let logs = [[0, 5], [1, 2], [0, 2], [0, 5], [1, 3]]
  let k = 5
  assert_eq!(find_users_active_minutes(logs, k), [0, 2, 0, 0, 0])
}

test "example 2" {
  let logs = [[1, 1], [2, 2], [2, 3]]
  let k = 4
  assert_eq!(find_users_active_minutes(logs, k), [1, 1, 0, 0])
}

test "single user multiple actions" {
  let logs = [[3, 1], [3, 2], [3, 1], [3, 3]]
  let k = 3
  assert_eq!(find_users_active_minutes(logs, k), [0, 1, 0])
}

test "multiple users single action" {
  let logs = [[4, 1], [5, 1], [6, 1]]
  let k = 2
  assert_eq!(find_users_active_minutes(logs, k), [3, 0])
}

test "no actions" {
  let logs = []
  let k = 1
  assert_eq!(find_users_active_minutes(logs, k), [0])
}
