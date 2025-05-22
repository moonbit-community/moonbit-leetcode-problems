test "example_1" {
  let s = "abcacb"
  let p = "ab"
  let removable = [3, 1, 0]
  assert_eq!(maximum_number_of_removable_characters(s, p, removable), 2)
}

test "example_2" {
  let s = "abcbddddd"
  let p = "abcd"
  let removable = [3, 2, 1, 4, 5, 6]
  assert_eq!(maximum_number_of_removable_characters(s, p, removable), 1)
}

test "example_3" {
  let s = "abcab"
  let p = "abc"
  let removable = [0, 1, 2, 3, 4]
  assert_eq!(maximum_number_of_removable_characters(s, p, removable), 0)
}
