test "example 1" {
  assert_eq!(maximal_network_rank(4, [(0, 1), (0, 3), (1, 2), (1, 3)]), 4)
}

test "example 2" {
  assert_eq!(
    maximal_network_rank(5, [(0, 1), (0, 3), (1, 2), (1, 3), (2, 3), (2, 4)]),
    5,
  )
}

test "example 3" {
  assert_eq!(
    maximal_network_rank(8, [(0, 1), (1, 2), (2, 3), (2, 4), (5, 6), (5, 7)]),
    5,
  )
}
