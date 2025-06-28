///|
test "example 1" {
  let num = "5489355142"
  let k = 4
  let result = min_adjacent_swaps_to_reach_kth_smallest_number(num, k)
  assert_eq(result, 2)
}

///|
test "example 2" {
  let num = "11112"
  let k = 4
  let result = min_adjacent_swaps_to_reach_kth_smallest_number(num, k)
  assert_eq(result, 4)
}

///|
test "example 3" {
  let num = "00123"
  let k = 1
  let result = min_adjacent_swaps_to_reach_kth_smallest_number(num, k)
  assert_eq(result, 1)
}
