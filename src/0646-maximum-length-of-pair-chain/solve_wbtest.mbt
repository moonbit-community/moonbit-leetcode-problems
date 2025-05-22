test "example 1" {
  let pairs : Array[Array[Int]] = [[1, 2], [2, 3], [3, 4]]
  assert_eq!(find_longest_chain(pairs), 2)
}

test "example 2" {
  let pairs : Array[Array[Int]] = [[5, 24], [15, 25], [27, 40], [50, 60]]
  assert_eq!(find_longest_chain(pairs), 3)
}
