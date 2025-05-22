test "example 1" {
  let costs = [1, 3, 2, 4, 1]
  let coins = 7
  assert_eq!(max_ice_cream_bars(costs, coins), 4)
}

test "example 2" {
  let costs = [10, 6, 8, 7, 7, 8]
  let coins = 5
  assert_eq!(max_ice_cream_bars(costs, coins), 0)
}

test "example 3" {
  let costs = [1, 6, 3, 1, 2, 5]
  let coins = 20
  assert_eq!(max_ice_cream_bars(costs, coins), 6)
}
