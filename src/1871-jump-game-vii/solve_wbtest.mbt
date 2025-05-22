///|
test "example 1" {
  let s = "011010"
  let min_jump = 2
  let max_jump = 3
  assert_eq!(can_reach_last_index(s, min_jump, max_jump), true)
}

///|
test "example 2" {
  let s = "01101110"
  let min_jump = 2
  let max_jump = 3
  assert_eq!(can_reach_last_index(s, min_jump, max_jump), false)
}

///|
test "edge case 1" {
  let s = "0000000000"
  let min_jump = 1
  let max_jump = 2
  assert_eq!(can_reach_last_index(s, min_jump, max_jump), true)
}

///|
test "edge case 2" {
  let s = "0101010101"
  let min_jump = 2
  let max_jump = 3
  assert_eq!(can_reach_last_index(s, min_jump, max_jump), false)
}

///|
test "edge case 3" {
  let s = "0000000001"
  let min_jump = 1
  let max_jump = 9
  assert_eq!(can_reach_last_index(s, min_jump, max_jump), false)
}
