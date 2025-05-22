test "example 1" {
  let heights = [4, 2, 3, 1]
  assert_eq!(buildings_with_ocean_view(heights), [0, 2, 3])
}

test "example 2" {
  let heights = [4, 3, 2, 1]
  assert_eq!(buildings_with_ocean_view(heights), [0, 1, 2, 3])
}

test "example 3" {
  let heights = [1, 3, 2, 4]
  assert_eq!(buildings_with_ocean_view(heights), [3])
}
