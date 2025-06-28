///|
test "odd_even_jumps simple case" {
  let arr : Array[Int] = [10, 13, 12, 14, 15]
  assert_eq(odd_even_jumps(arr), 2)
}

///|
test "odd_even_jumps single element" {
  let arr : Array[Int] = [1]
  assert_eq(odd_even_jumps(arr), 1)
}

///|
test "odd_even_jumps no valid jumps" {
  let arr : Array[Int] = [5, 1]
  assert_eq(odd_even_jumps(arr), 1)
}
