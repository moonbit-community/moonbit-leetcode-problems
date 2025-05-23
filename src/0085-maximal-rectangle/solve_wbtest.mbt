///|
test "example 1" {
  assert_eq!(
    maximal_rectangle([
      ["1", "0", "1", "0", "0"],
      ["1", "0", "1", "1", "1"],
      ["1", "1", "1", "1", "1"],
      ["1", "0", "0", "1", "0"],
    ]),
    6,
  )
}

///|
test "example 2" {
  assert_eq!(maximal_rectangle([["1"]]), 1)
}

///|
test "example 3" {
  assert_eq!(maximal_rectangle([["0"]]), 0)
}
