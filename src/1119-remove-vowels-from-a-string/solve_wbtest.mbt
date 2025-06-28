///|
test "example 1" {
  assert_eq(remove_vowels("hello"), "hll")
}

///|
test "example 2" {
  assert_eq(remove_vowels("MoonBit"), "MnBt")
}

///|
test "example 3" {
  assert_eq(remove_vowels("aeiou"), "")
}
