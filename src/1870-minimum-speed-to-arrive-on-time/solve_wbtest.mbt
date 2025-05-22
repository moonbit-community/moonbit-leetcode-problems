test "example_1" {
  let dist = [1, 3, 2]
  let hour = 6.0
  assert_eq!(min_speed_to_arrive_on_time(dist, hour), 1)
}

test "example_2" {
  let dist = [1, 3, 2]
  let hour = 2.7
  assert_eq!(min_speed_to_arrive_on_time(dist, hour), 3)
}

test "example_3" {
  let dist = [1, 3, 2]
  let hour = 1.9
  assert_eq!(min_speed_to_arrive_on_time(dist, hour), -1)
}
