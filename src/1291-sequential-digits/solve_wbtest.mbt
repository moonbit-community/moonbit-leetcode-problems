///|
test "example 1" {
  let low : Int = 100
  let high : Int = 300
  let expected : Array[Int] = [123, 234]
  assert_eq(sequential_digits(low, high), expected)
}

///|
test "example 2" {
  let low : Int = 1000
  let high : Int = 13000
  let expected : Array[Int] = [1234, 2345, 3456, 4567, 5678, 6789, 12345]
  assert_eq(sequential_digits(low, high), expected)
}
