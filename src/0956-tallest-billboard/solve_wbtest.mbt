///|
test "example 1" {
  let rods : Array[Int] = [1, 2, 3, 6]
  assert_eq(tallest_billboard(rods), 6)
}

///|
test "example 2" {
  let rods : Array[Int] = [1, 2, 3, 4, 5, 6]
  assert_eq(tallest_billboard(rods), 10)
}

///|
test "example 3" {
  let rods : Array[Int] = [1, 2]
  assert_eq(tallest_billboard(rods), 0)
}
