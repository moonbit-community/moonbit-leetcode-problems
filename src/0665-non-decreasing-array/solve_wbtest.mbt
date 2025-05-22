test "check_possibility example 1" {
  assert_eq!(check_possibility([4, 2, 3]), true)
}

test "check_possibility example 2" {
  assert_eq!(check_possibility([4, 2, 1]), false)
}

test "check_possibility example 3" {
  assert_eq!(check_possibility([3, 4, 2, 3]), false)
}

test "is_sorted example" {
  assert_eq!(is_sorted([1, 2, 3, 4]), true)
  assert_eq!(is_sorted([1, 3, 2]), false)
}
