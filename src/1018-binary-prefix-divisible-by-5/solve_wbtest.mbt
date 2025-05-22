///|
test "example 1" {
  let nums : Array[Int] = [0, 1, 1]
  let expected : Array[Bool] = [true, false, false]
  assert_eq!(prefixes_div_by5(nums), expected)
}

///|
test "example 2" {
  let nums : Array[Int] = [1, 1, 1]
  let expected : Array[Bool] = [false, false, false]
  assert_eq!(prefixes_div_by5(nums), expected)
}

///|
test "example 3" {
  let nums : Array[Int] = [0, 1, 1, 1, 1, 1]
  let expected : Array[Bool] = [true, false, false, false, true, false]
  assert_eq!(prefixes_div_by5(nums), expected)
}

///|
test "example 4" {
  let nums : Array[Int] = [1, 1, 1, 0, 1]
  let expected : Array[Bool] = [false, false, false, false, false]
  assert_eq!(prefixes_div_by5(nums), expected)
}
