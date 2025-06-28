///|
test "example 1" {
  let satisfaction : Array[Int] = [-1, -8, 0, 5, -9]
  assert_eq(max_satisfaction(satisfaction), 14)
}

///|
test "example 2" {
  let satisfaction : Array[Int] = [4, 3, 2]
  assert_eq(max_satisfaction(satisfaction), 20)
}

///|
test "example 3" {
  let satisfaction : Array[Int] = [-1, -4, -5]
  assert_eq(max_satisfaction(satisfaction), 0)
}

///|
test "example 4" {
  let satisfaction : Array[Int] = [-2, 5, -1, 0, 3, -3]
  assert_eq(max_satisfaction(satisfaction), 35)
}
