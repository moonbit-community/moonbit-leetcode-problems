test "example 1" {
  let costs = [(10, 20), (30, 200), (400, 50), (30, 20)]
  assert_eq!(two_city_sched_cost(costs), 110)
}

test "example 2" {
  let costs = [
    (259, 770),
    (448, 54),
    (926, 667),
    (184, 139),
    (840, 118),
    (577, 469),
  ]
  assert_eq!(two_city_sched_cost(costs), 1859)
}
