///|
test "example 1" {
  let strs = Array::make(3, "")
  strs[0] = "flower"
  strs[1] = "flow"
  strs[2] = "flight"
  assert_eq!(longest_common_prefix(strs), "fl")
}

///|
test "example 2" {
  let strs = Array::make(3, "")
  strs[0] = "dog"
  strs[1] = "racecar"
  strs[2] = "car"
  assert_eq!(longest_common_prefix(strs), "")
}

///|
test "empty array" {
  let strs = Array::make(0, "")
  assert_eq!(longest_common_prefix(strs), "")
}

///|
test "single element array" {
  let strs = Array::make(1, "")
  strs[0] = "moonbit"
  assert_eq!(longest_common_prefix(strs), "moonbit")
}

///|
test "all elements same" {
  let strs = Array::make(3, "")
  strs[0] = "moon"
  strs[1] = "moon"
  strs[2] = "moon"
  assert_eq!(longest_common_prefix(strs), "moon")
}
