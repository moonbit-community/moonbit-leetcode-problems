test "example 1" {
  let input : Array[Int] = [3, 2, 1]
  let expected : Array[Int] = [2, 3, 1]
  assert_eq!(prev_perm_opt1(input), expected)
}

test "example 2" {
  let input : Array[Int] = [1, 1, 5]
  let expected : Array[Int] = [1, 1, 5]
  assert_eq!(prev_perm_opt1(input), expected)
}

test "example 3" {
  let input : Array[Int] = [1, 9, 4, 6, 7]
  let expected : Array[Int] = [1, 7, 4, 6, 9]
  assert_eq!(prev_perm_opt1(input), expected)
}
