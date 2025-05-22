test "example 1" {
  let prices : Array[Int] = [1, 3, 2, 8, 4, 9]
  let fee : Int = 2
  assert_eq!(max_profit(prices, fee), 8)
}

test "example 2" {
  let prices : Array[Int] = [1, 3, 7, 5, 10, 3]
  let fee : Int = 3
  assert_eq!(max_profit(prices, fee), 6)
}
