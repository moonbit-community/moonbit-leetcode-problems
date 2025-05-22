test "maxCoins example" {
  let nums : Array[Int] = [3, 1, 5, 8]
  assert_eq!(max_coins(nums), 167)
}

test "maxCoins example 2" {
  let nums : Array[Int] = [1, 5]
  assert_eq!(max_coins(nums), 10)
}
