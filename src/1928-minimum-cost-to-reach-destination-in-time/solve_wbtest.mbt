///|
test "example 1" {
  let max_time = 30
  let edges = [
    [0, 1, 10],
    [1, 2, 10],
    [2, 5, 10],
    [0, 3, 1],
    [3, 4, 10],
    [4, 5, 15],
  ]
  let passing_fees = [5, 1, 2, 20, 20, 3]
  assert_eq(
    min_cost_to_reach_destination_in_time(max_time, edges, passing_fees),
    11,
  )
}

///|
test "example 2" {
  let max_time = 29
  let edges = [
    [0, 1, 10],
    [1, 2, 10],
    [2, 5, 10],
    [0, 3, 1],
    [3, 4, 10],
    [4, 5, 15],
  ]
  let passing_fees = [5, 1, 2, 20, 20, 3]
  assert_eq(
    min_cost_to_reach_destination_in_time(max_time, edges, passing_fees),
    48,
  )
}

///|
test "example 3" {
  let max_time = 25
  let edges = [
    [0, 1, 10],
    [1, 2, 10],
    [2, 5, 10],
    [0, 3, 1],
    [3, 4, 10],
    [4, 5, 15],
  ]
  let passing_fees = [5, 1, 2, 20, 20, 3]
  assert_eq(
    min_cost_to_reach_destination_in_time(max_time, edges, passing_fees),
    -1,
  )
}
