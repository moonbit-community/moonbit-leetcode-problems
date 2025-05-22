///|
test "example 1" {
  let rungs = [1, 3, 5, 10]
  let dist = 2
  assert_eq!(add_minimum_number_of_rungs(rungs, dist), 2)
}

///|
test "example 2" {
  let rungs = [3, 6, 8, 10]
  let dist = 3
  assert_eq!(add_minimum_number_of_rungs(rungs, dist), 0)
}

///|
test "example 3" {
  let rungs = [3, 4, 6, 7]
  let dist = 2
  assert_eq!(add_minimum_number_of_rungs(rungs, dist), 1)
}
