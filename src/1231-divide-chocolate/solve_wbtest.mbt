test "example 1" {
  let sweetness : Array[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  let k : Int = 5
  assert_eq!(maximize_sweetness(sweetness, k), 6)
}

test "example 2" {
  let sweetness : Array[Int] = [5, 6, 7, 8, 9, 1, 2, 3, 4]
  let k : Int = 8
  assert_eq!(maximize_sweetness(sweetness, k), 1)
}

test "example 3" {
  let sweetness : Array[Int] = [1, 2, 2]
  let k : Int = 2
  assert_eq!(maximize_sweetness(sweetness, k), 1)
}
