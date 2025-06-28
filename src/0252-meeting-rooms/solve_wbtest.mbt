///|
test "example 1" {
  let intervals = [(0, 30), (5, 10), (15, 20)]
  let result = can_attend_meetings(intervals)
  assert_eq(result, false)
}
