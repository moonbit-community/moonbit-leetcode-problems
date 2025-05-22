///|
test "example 1" {
  let dist = [1, 3, 2]
  let speed = 4
  let hours_before = 2
  assert_eq!(
    min_skips_to_arrive_at_meeting_on_time(dist, speed, hours_before),
    1,
  )
}

///|
test "example 2" {
  let dist = [7, 3, 5, 5]
  let speed = 2
  let hours_before = 10
  assert_eq!(
    min_skips_to_arrive_at_meeting_on_time(dist, speed, hours_before),
    2,
  )
}

///|
test "example 3" {
  let dist = [7, 3, 5, 5]
  let speed = 1
  let hours_before = 10
  assert_eq!(
    min_skips_to_arrive_at_meeting_on_time(dist, speed, hours_before),
    -1,
  )
}
