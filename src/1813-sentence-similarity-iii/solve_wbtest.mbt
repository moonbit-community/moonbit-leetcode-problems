///|
test "example 1" {
  assert_eq(sentence_similarity("My name is Haley", "My Haley"), true)
}

///|
test "example 2" {
  assert_eq(sentence_similarity("of", "A lot of words"), false)
}

///|
test "example 3" {
  assert_eq(sentence_similarity("Eating right now", "Eating"), true)
}
