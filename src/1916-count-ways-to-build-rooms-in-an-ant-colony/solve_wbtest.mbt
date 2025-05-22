///|
test "example 1" {
  let prev_room = [-1, 0, 1]
  assert_eq!(count_ways_to_build_rooms(prev_room), 1)
}

///|
test "example 2" {
  let prev_room = [-1, 0, 0, 1, 2]
  assert_eq!(count_ways_to_build_rooms(prev_room), 6)
}
