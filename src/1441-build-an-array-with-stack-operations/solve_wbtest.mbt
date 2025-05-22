test "example 1" {
  let target : Array[Int] = [1, 3]
  let n = 3
  let expected : Array[String] = ["Push", "Push", "Pop", "Push"]
  assert_eq!(build_array(target, n), expected)
}

test "example 2" {
  let target : Array[Int] = [1, 2, 3]
  let n = 3
  let expected : Array[String] = ["Push", "Push", "Push"]
  assert_eq!(build_array(target, n), expected)
}

test "example 3" {
  let target : Array[Int] = [1, 2]
  let n = 4
  let expected : Array[String] = ["Push", "Push"]
  assert_eq!(build_array(target, n), expected)
}
