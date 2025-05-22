///|
test "example 1" {
  let gain = [-5, 1, 5, 0, -7]
  assert_eq!(find_highest_altitude(gain), 1)
}

///|
test "example 2" {
  let gain = [-4, -3, -2, -1, 4, 3, 2]
  assert_eq!(find_highest_altitude(gain), 0)
}

///|
test "example with all positive gains" {
  let gain = [1, 2, 3, 4, 5]
  assert_eq!(find_highest_altitude(gain), 15)
}

///|
test "example with all negative gains" {
  let gain = [-1, -2, -3, -4, -5]
  assert_eq!(find_highest_altitude(gain), 0)
}

///|
test "example with mixed gains" {
  let gain = [1, -2, 3, -4, 5, -6, 7]
  assert_eq!(find_highest_altitude(gain), 5)
}
