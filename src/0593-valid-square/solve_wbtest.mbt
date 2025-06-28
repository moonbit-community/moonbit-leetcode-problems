///|
test "example 1" {
  let p1 : Array[Int] = [0, 0]
  let p2 : Array[Int] = [1, 1]
  let p3 : Array[Int] = [1, 0]
  let p4 : Array[Int] = [0, 1]
  assert_eq(valid_square(p1, p2, p3, p4), true)
}

///|
test "example 2" {
  let p1 : Array[Int] = [0, 0]
  let p2 : Array[Int] = [1, 1]
  let p3 : Array[Int] = [0, 1]
  let p4 : Array[Int] = [1, 0]
  assert_eq(valid_square(p1, p2, p3, p4), true)
}

///|
test "example 3" {
  let p1 : Array[Int] = [0, 0]
  let p2 : Array[Int] = [1, 1]
  let p3 : Array[Int] = [0, 2]
  let p4 : Array[Int] = [2, 1]
  assert_eq(valid_square(p1, p2, p3, p4), false)
}
