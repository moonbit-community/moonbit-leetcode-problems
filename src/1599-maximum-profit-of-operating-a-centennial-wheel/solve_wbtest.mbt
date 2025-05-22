test "example 1" {
  let customers = [8, 3]
  let boarding_cost = 5
  let running_cost = 6
  assert_eq!(
    min_operations_max_profit(customers, boarding_cost, running_cost),
    3,
  )
}

test "example 2" {
  let customers = [10, 9, 6]
  let boarding_cost = 6
  let running_cost = 4
  assert_eq!(
    min_operations_max_profit(customers, boarding_cost, running_cost),
    7,
  )
}

test "example 3" {
  let customers = [3, 4, 0, 5, 1]
  let boarding_cost = 1
  let running_cost = 92
  assert_eq!(
    min_operations_max_profit(customers, boarding_cost, running_cost),
    -1,
  )
}
