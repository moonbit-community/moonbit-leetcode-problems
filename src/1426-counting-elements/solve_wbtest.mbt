test "example 1" {
  let arr = [1, 2, 3]
  assert_eq!(count_elements(arr), 2)
}

test "example 2" {
  let arr = [1, 3, 2, 3, 5, 0]
  assert_eq!(count_elements(arr), 3)
}

test "example 3" {
  let arr = [1, 1, 2, 2]
  assert_eq!(count_elements(arr), 4)
}
