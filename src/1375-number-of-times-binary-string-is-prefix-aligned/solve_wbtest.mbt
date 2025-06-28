///|
test "example 1" {
  let flips : Array[Int] = [3, 2, 4, 1, 5]
  let expected = 2
  assert_eq(num_times_all_blue(flips), expected)
}

///|
test "example 2" {
  let flips : Array[Int] = [4, 1, 2, 3]
  let expected = 1
  assert_eq(num_times_all_blue(flips), expected)
}

///|
test "example 3" {
  let flips : Array[Int] = [2, 1, 3, 5, 4]
  let expected = 3
  assert_eq(num_times_all_blue(flips), expected)
}
