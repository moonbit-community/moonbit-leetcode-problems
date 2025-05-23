///|
test "example 1" {
  let expected = @immut/list.of(["1", "2", "Fizz"])
  assert_eq!(fizz_buzz(3), expected)
}

///|
test "example 2" {
  let expected = @immut/list.of(["1", "2", "Fizz", "4", "Buzz"])
  assert_eq!(fizz_buzz(5), expected)
}
