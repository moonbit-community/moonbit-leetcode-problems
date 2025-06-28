///|
test "example 1" {
  let base_costs = [1, 7]
  let topping_costs = [3, 4]
  let target = 10
  assert_eq(closest_dessert_cost(base_costs, topping_costs, target), 10)
}

///|
test "example 2" {
  let base_costs = [2, 3]
  let topping_costs = [4, 5, 100]
  let target = 18
  assert_eq(closest_dessert_cost(base_costs, topping_costs, target), 17)
}

///|
test "example 3" {
  let base_costs = [3, 10]
  let topping_costs = [2, 5]
  let target = 9
  assert_eq(closest_dessert_cost(base_costs, topping_costs, target), 8)
}
