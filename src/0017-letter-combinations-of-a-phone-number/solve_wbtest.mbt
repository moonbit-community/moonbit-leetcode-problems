test "example 1" {
  let digits = "23"
  let expected = ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
  assert_eq!(letter_combinations(digits), expected)
}

test "example 2" {
  let digits = ""
  let expected = Array::new()
  assert_eq!(letter_combinations(digits), expected)
}

test "example 3" {
  let digits = "2"
  let expected = ["a", "b", "c"]
  assert_eq!(letter_combinations(digits), expected)
}
