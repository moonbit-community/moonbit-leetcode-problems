///|
test "example 1" {
  let nums : Array[Int] = [
    1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1,
  ]
  let k : Int = 3
  assert_eq!(longest_ones(nums, k), 18)
}

///|
test "example 2" {
  let nums : Array[Int] = [0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0]
  let k : Int = 2
  assert_eq!(longest_ones(nums, k), 10)
}

///|
test "example 3" {
  let nums : Array[Int] = [0, 0, 0, 1]
  let k : Int = 4
  assert_eq!(longest_ones(nums, k), 4)
}
