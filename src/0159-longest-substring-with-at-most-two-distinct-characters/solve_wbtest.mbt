test "example 1" {
  assert_eq!(length_of_longest_substring_two_distinct("eceba"), 3)
}

test "example 2" {
  assert_eq!(length_of_longest_substring_two_distinct("ccaabbb"), 5)
}

test "example 3" {
  assert_eq!(length_of_longest_substring_two_distinct("a"), 1)
}

test "example 4" {
  assert_eq!(length_of_longest_substring_two_distinct("ab"), 2)
}

test "example 5" {
  assert_eq!(length_of_longest_substring_two_distinct("abc"), 2)
}
