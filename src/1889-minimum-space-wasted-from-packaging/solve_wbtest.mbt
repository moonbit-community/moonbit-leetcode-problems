test "example 1" {
  let packages = [2, 3, 5]
  let boxes = [[4, 8], [2, 8]]
  assert_eq!(min_space_wasted_from_packaging(packages, boxes), 6)
}

test "example 2" {
  let packages = [2, 3, 5]
  let boxes = [[1, 4], [2, 3], [3, 4]]
  assert_eq!(min_space_wasted_from_packaging(packages, boxes), -1)
}

test "example 3" {
  let packages = [3, 5, 8, 10, 11, 12]
  let boxes = [[12], [11, 9], [10, 5, 14]]
  assert_eq!(min_space_wasted_from_packaging(packages, boxes), 9)
}
