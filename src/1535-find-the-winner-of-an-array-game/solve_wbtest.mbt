test "example 1" {
  let arr : Array[Int] = [2, 1, 3, 5, 4, 6, 7]
  let k : Int = 2
  assert_eq!(get_winner(arr, k), 5)
}

test "example 2" {
  let arr : Array[Int] = [3, 2, 1]
  let k : Int = 10
  assert_eq!(get_winner(arr, k), 3)
}

test "example 3" {
  let arr : Array[Int] = [1, 9, 8, 2, 3, 7, 6, 4, 5]
  let k : Int = 7
  assert_eq!(get_winner(arr, k), 9)
}
