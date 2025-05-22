///|
test "example 1" {
  let houses = [0, 0, 0, 0, 0]
  let cost = [[1, 10], [10, 1], [10, 1], [1, 10], [5, 1]]
  let m = 5
  let n = 2
  let target = 3
  assert_eq!(min_cost(houses, cost, m, n, target), 9)
}

///|
test "example 2" {
  let houses = [0, 2, 1, 2, 0]
  let cost = [[1, 10], [10, 1], [1, 10], [10, 1], [1, 10]]
  let m = 5
  let n = 2
  let target = 3
  assert_eq!(min_cost(houses, cost, m, n, target), 11)
}

///|
test "example 3" {
  let houses = [0, 0, 0, 0, 0]
  let cost = [[1, 10], [10, 1], [1, 10], [10, 1], [1, 10]]
  let m = 5
  let n = 2
  let target = 5
  assert_eq!(min_cost(houses, cost, m, n, target), 5)
}
