test "example 1" {
  let prices = [3, 3, 5, 0, 0, 3, 1, 4]
  let profit = max_profit(prices)
  assert_eq!(profit, 6)
}

test "example 2" {
  let prices = [1, 2, 3, 4, 5]
  let profit = max_profit(prices)
  assert_eq!(profit, 4)
}

test "example 3" {
  let prices = [7, 6, 4, 3, 1]
  let profit = max_profit(prices)
  assert_eq!(profit, 0)
}
