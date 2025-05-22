test "example 1" {
  let adjacent_pairs : Array[Array[Int]] = [[2, 1], [3, 4], [3, 2]]
  let expected : Array[Int] = [1, 2, 3, 4]
  assert_eq!(restore_array(adjacent_pairs), expected)
}

test "example 2" {
  let adjacent_pairs : Array[Array[Int]] = [[4, -2], [1, 4], [-3, 1]]
  let expected : Array[Int] = [-2, 4, 1, -3]
  assert_eq!(restore_array(adjacent_pairs), expected)
}

test "example 3" {
  let adjacent_pairs : Array[Array[Int]] = [[100000, -100000]]
  let expected : Array[Int] = [100000, -100000]
  assert_eq!(restore_array(adjacent_pairs), expected)
}
