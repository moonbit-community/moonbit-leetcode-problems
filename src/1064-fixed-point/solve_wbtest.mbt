test "example 1" {
  let arr : Array[Int] = [0, 2, 5, 8, 17]
  assert_eq!(fixed_point(arr), 0)
}

test "example 2" {
  let arr : Array[Int] = [-10, -5, 0, 3, 7]
  assert_eq!(fixed_point(arr), 3)
}

test "example 3" {
  let arr : Array[Int] = [-10, -5, 3, 4, 7, 9]
  assert_eq!(fixed_point(arr), -1)
}
