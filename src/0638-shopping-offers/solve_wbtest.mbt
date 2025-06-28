///|
test "example 1" {
  let price : Array[Int] = [2, 5]
  let special : Array[Array[Int]] = [[3, 0, 5], [1, 2, 10]]
  let needs : Array[Int] = [3, 2]
  assert_eq(shoppingOffers(price, special, needs), 14)
}

///|
test "example 2" {
  let price : Array[Int] = [2, 3, 4]
  let special : Array[Array[Int]] = [[1, 1, 0, 4], [2, 2, 1, 9]]
  let needs : Array[Int] = [1, 2, 1]
  assert_eq(shoppingOffers(price, special, needs), 11)
}
