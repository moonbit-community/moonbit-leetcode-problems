test "example 1" {
  let pizza : Array[String] = ["A..", "AAA", "..."]
  let k = 3
  assert_eq!(ways(pizza, k), 3)
}

test "example 2" {
  let pizza : Array[String] = ["A..", "AA.", "..."]
  let k = 3
  assert_eq!(ways(pizza, k), 1)
}

test "example 3" {
  let pizza : Array[String] = ["A..", "A..", "..."]
  let k = 1
  assert_eq!(ways(pizza, k), 1)
}
