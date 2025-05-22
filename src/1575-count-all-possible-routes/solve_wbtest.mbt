///|
test "example 1" {
  let locations = [2, 3, 6, 8, 4]
  let start = 1
  let finish = 3
  let fuel = 5
  assert_eq!(count_routes(locations, start, finish, fuel), 4)
}

///|
test "example 2" {
  let locations = [4, 3, 1]
  let start = 1
  let finish = 0
  let fuel = 6
  assert_eq!(count_routes(locations, start, finish, fuel), 5)
}
