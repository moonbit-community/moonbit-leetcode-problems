test "example 1" {
  let arr : Array[Int] = [1, 2, 3, 4]
  let difference = 1
  let expected = 4
  assert_eq!(longest_subsequence(arr, difference), expected)
}

test "example 2" {
  let arr : Array[Int] = [1, 3, 5, 7]
  let difference = 1
  let expected = 1
  assert_eq!(longest_subsequence(arr, difference), expected)
}

test "example 3" {
  let arr : Array[Int] = [1, 5, 7, 8, 5, 3, 4, 2, 1]
  let difference = -2
  let expected = 4
  assert_eq!(longest_subsequence(arr, difference), expected)
}
