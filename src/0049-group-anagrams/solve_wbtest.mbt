///|
test "example 1" {
  inspect!(
    group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"]),
    content="[[bat], [tan, nat], [eat, tea, ate]]",
  )
}

///|
test "example 2" {
  inspect!(group_anagrams([""]), content="[[]]")
}

///|
test "example 3" {
  inspect!(group_anagrams(["a"]), content="[[a]]")
}
