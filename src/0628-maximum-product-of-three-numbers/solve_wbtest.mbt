///|
test "maximum product" {
  let nums : Array[Int] = [-10, -20, 5, 1, 3, 6, 2]
  assert_eq(maximum_product(nums), 1200)
}

///|
test "maximum product with negative numbers" {
  let nums : Array[Int] = [-1, -2, -3]
  assert_eq(maximum_product(nums), -6)
}

///|
test "maximum product with positive numbers" {
  let nums : Array[Int] = [1, 2, 3, 4]
  assert_eq(maximum_product(nums), 24)
}
