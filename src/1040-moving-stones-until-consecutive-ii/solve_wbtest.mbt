///|
test "example 1" {
  // stones = [7,4,9], Expected output: [1,2]
  assert_eq(num_moves_stones_ii([7, 4, 9]), [1, 2])
}

///|
test "example 2" {
  // stones = [6,5,4,3,10], Expected output: [2,3]
  assert_eq(num_moves_stones_ii([6, 5, 4, 3, 10]), [2, 3])
}

///|
test "example 3" {
  // stones = [100,101,104,102,103], Expected output: [0,0]
  assert_eq(num_moves_stones_ii([100, 101, 104, 102, 103]), [0, 0])
}
