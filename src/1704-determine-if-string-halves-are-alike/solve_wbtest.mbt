test "Example 1" {
  inspect!(halves_are_alike("book"), content="true")
}

test "Example 2" {
  inspect!(halves_are_alike("textbook"), content="false")
}
