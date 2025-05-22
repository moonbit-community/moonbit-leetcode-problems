///|
test "example 1" {
  let queries : Array[(Int, Int)] = [(3, 6), (1, 6)]
  let expected : Array[Bool] = [true, false]
  assert_eq!(are_connected(6, 2, queries), expected)
}

///|
test "example 2" {
  let queries : Array[(Int, Int)] = [(1, 4), (2, 5), (3, 6)]
  let expected : Array[Bool] = [false, false, true]
  assert_eq!(are_connected(6, 0, queries), expected)
}
