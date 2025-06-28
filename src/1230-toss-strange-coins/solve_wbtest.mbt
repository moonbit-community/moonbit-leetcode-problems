///|
test "example 1" {
  let prob : Array[Double] = [0.5, 0.5, 0.5, 0.5]
  let target = 2
  let expected = 0.375
  assert_eq(probability_of_heads(prob, target), expected)
}

///|
test "example 2" {
  let prob : Array[Double] = [0.4, 0.2, 0.6, 0.2]
  let target = 3
  let expected = 0.0384
  assert_eq(probability_of_heads(prob, target), expected)
}
