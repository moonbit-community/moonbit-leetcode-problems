///|
test "example 1" {
  assert_eq!(max_depth("(1+(2*3)+((8)/4))+1"), 3)
}

///|
test "example 2" {
  assert_eq!(max_depth("(1)+((2))+(((3)))"), 3)
}

///|
test "example 3" {
  assert_eq!(max_depth("1+(2*3)/(2-1)"), 1)
}

///|
test "example 4" {
  assert_eq!(max_depth("1"), 0)
}
