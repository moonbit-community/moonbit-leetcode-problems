test "example 1" {
  let a : Int = 2
  let b : Array[Int] = [3]
  assert_eq!(super_pow(a, b), 8)
}

test "example 2" {
  let a : Int = 2
  let b : Array[Int] = [1, 0]
  assert_eq!(super_pow(a, b), 1024)
}

test "example 3" {
  let a : Int = 2
  let b : Array[Int] = [1, 0, 0]
  assert_eq!(super_pow(a, b), 976371285)
}
