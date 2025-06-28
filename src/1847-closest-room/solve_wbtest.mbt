///|
test "example 1" {
  let rooms : Array[(Int, Int)] = [(2, 2), (1, 2), (3, 2)]
  let queries : Array[(Int, Int)] = [(3, 1), (3, 3), (5, 2)]
  let expected_output : Array[Int] = [3, -1, 3]
  assert_eq(closest_room(rooms, queries), expected_output)
}

///|
test "example 2" {
  let rooms : Array[(Int, Int)] = [(1, 4), (2, 3), (3, 5), (4, 1), (5, 2)]
  let queries : Array[(Int, Int)] = [(2, 3), (2, 4), (2, 5)]
  let expected_output : Array[Int] = [2, 1, 3]
  assert_eq(closest_room(rooms, queries), expected_output)
}
