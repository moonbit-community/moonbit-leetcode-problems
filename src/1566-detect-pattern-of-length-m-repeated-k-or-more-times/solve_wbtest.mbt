test "example 1" {
  let arr : Array[Int] = [1, 2, 4, 4, 4, 4]
  let m = 1
  let k = 3
  assert_eq!(contains_pattern(arr, m, k), true)
}

test "example 2" {
  let arr : Array[Int] = [1, 2, 1, 2, 1, 1, 1, 3]
  let m = 2
  let k = 2
  assert_eq!(contains_pattern(arr, m, k), false)
}

test "example 3" {
  let arr : Array[Int] = [1, 2, 1, 2, 1, 3]
  let m = 2
  let k = 3
  assert_eq!(contains_pattern(arr, m, k), false)
}

test "example 4" {
  let arr : Array[Int] = [1, 2, 3, 1, 2]
  let m = 2
  let k = 2
  assert_eq!(contains_pattern(arr, m, k), false)
}
