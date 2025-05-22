test "example 1" {
  let gas = [1, 2, 3, 4, 5]
  let cost = [3, 4, 5, 1, 2]
  assert_eq!(can_complete_circuit(gas, cost), 3)
}

test "example 2" {
  let gas = [2, 3, 4]
  let cost = [3, 4, 3]
  assert_eq!(can_complete_circuit(gas, cost), -1)
}
