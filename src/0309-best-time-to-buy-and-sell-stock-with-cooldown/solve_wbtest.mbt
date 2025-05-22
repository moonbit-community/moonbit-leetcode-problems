///|
test "tests" {
  let prices : Array[Int] = [1, 2, 3, 0, 2]
  let profit = max_profit(prices)
  inspect!(profit, content="3")
}
