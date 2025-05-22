test "example 1" {
  let source = [1, 2, 3, 4]
  let target = [2, 1, 4, 5]
  let allowed_swaps = [[0, 1], [2, 3]]
  assert_eq!(minimize_hamming_distance(source, target, allowed_swaps), 1)
}

test "example 2" {
  let source = [1, 2, 3, 4]
  let target = [1, 3, 2, 4]
  let allowed_swaps = []
  assert_eq!(minimize_hamming_distance(source, target, allowed_swaps), 2)
}

test "example 3" {
  let source = [5, 1, 2, 4, 3]
  let target = [1, 5, 4, 2, 3]
  let allowed_swaps = [[0, 4], [4, 2], [1, 3], [1, 4]]
  assert_eq!(minimize_hamming_distance(source, target, allowed_swaps), 0)
}
