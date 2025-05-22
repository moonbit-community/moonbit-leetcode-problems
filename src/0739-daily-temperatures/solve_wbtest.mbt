///|
test "daily temperatures example 1" {
  assert_eq!(dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]), [
    1, 1, 4, 2, 1, 1, 0, 0,
  ])
}

///|
test "daily temperatures example 2" {
  assert_eq!(dailyTemperatures([30, 40, 50, 60]), [1, 1, 1, 0])
}

///|
test "daily temperatures example 3" {
  assert_eq!(dailyTemperatures([30, 60, 90]), [1, 1, 0])
}
