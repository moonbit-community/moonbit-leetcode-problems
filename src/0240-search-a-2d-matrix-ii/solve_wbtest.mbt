///|
test "example 1" {
  let matrix = [
    [1, 4, 7, 11, 15],
    [2, 5, 8, 12, 19],
    [3, 6, 9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30],
  ]
  let target = 5
  let found = search_matrix(matrix, target)
  assert_eq!(found, true)
}

///|
test "example 2" {
  let matrix = [
    [1, 4, 7, 11, 15],
    [2, 5, 8, 12, 19],
    [3, 6, 9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30],
  ]
  let target = 20
  let found = search_matrix(matrix, target)
  assert_eq!(found, false)
}
