///|
test "example 1" {
  assert_eq!(int_to_roman(3), "III")
}

///|
test "example 2" {
  assert_eq!(int_to_roman(58), "LVIII")
}

///|
test "example 3" {
  assert_eq!(int_to_roman(1994), "MCMXCIV")
}

///|
test "additional cases" {
  assert_eq!(int_to_roman(1), "I")
  assert_eq!(int_to_roman(4), "IV")
  assert_eq!(int_to_roman(9), "IX")
  assert_eq!(int_to_roman(10), "X")
  assert_eq!(int_to_roman(40), "XL")
  assert_eq!(int_to_roman(90), "XC")
  assert_eq!(int_to_roman(400), "CD")
  assert_eq!(int_to_roman(900), "CM")
  assert_eq!(int_to_roman(3999), "MMMCMXCIX")
}
