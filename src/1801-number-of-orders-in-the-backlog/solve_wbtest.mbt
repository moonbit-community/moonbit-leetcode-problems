///|
test "example 1" {
  let orders : Array[Array[Int]] = [
    [10, 5, 0],
    [15, 2, 1],
    [25, 1, 1],
    [30, 4, 0],
  ]
  assert_eq(number_of_orders_in_backlog(orders), 6)
}

///|
test "example 2" {
  let orders : Array[Array[Int]] = [
    [7, 1000000000, 1],
    [15, 3, 0],
    [5, 999999995, 0],
    [5, 1, 1],
  ]
  assert_eq(number_of_orders_in_backlog(orders), 999999984)
}
