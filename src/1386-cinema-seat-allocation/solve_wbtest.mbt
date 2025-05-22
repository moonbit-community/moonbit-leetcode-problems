test "example 1" {
  let n = 3
  let reserved_seats : Array[(Int, Int)] = [
    (1, 2),
    (1, 3),
    (1, 8),
    (2, 6),
    (3, 1),
    (3, 10),
  ]
  assert_eq!(max_number_of_families(n, reserved_seats), 4)
}

test "example 2" {
  let n = 2
  let reserved_seats : Array[(Int, Int)] = [(2, 1), (1, 8), (2, 6)]
  assert_eq!(max_number_of_families(n, reserved_seats), 2)
}

test "example 3" {
  let n = 4
  let reserved_seats : Array[(Int, Int)] = [(4, 3), (1, 4), (4, 6), (1, 7)]
  assert_eq!(max_number_of_families(n, reserved_seats), 4)
}
