///|
test "example 1" {
  let jobs = [3, 2, 3]
  let k = 3
  assert_eq(find_minimum_time_to_finish_all_jobs(jobs, k), 3)
}

///|
test "example 2" {
  let jobs = [1, 2, 4, 7, 8]
  let k = 2
  assert_eq(find_minimum_time_to_finish_all_jobs(jobs, k), 11)
}

///|
test "example 3" {
  let jobs = [1, 2, 3, 4, 5]
  let k = 2
  assert_eq(find_minimum_time_to_finish_all_jobs(jobs, k), 9)
}
