///|
test "example 1" {
  let cost = [4, 3, 2, 5, 6, 7, 2, 5, 5]
  let target = 9
  assert_eq!(largest_number(cost, target), "7772")
}

///|
test "example 2" {
  let cost = [7, 6, 5, 5, 5, 6, 8, 7, 8]
  let target = 12
  assert_eq!(largest_number(cost, target), "85")
}

///|
test "example 3" {
  let cost = [2, 4, 6, 2, 4, 6, 4, 4, 4]
  let target = 5
  assert_eq!(largest_number(cost, target), "0")
}
