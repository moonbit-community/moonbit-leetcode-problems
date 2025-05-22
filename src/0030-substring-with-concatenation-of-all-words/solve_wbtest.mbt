///|
test "example 1" {
  inspect!(
    find_substring("barfoothefoobarman", ["foo", "bar"]),
    content="[0, 9]",
  )
}

///|
test "example 2" {
  inspect!(
    find_substring("wordgoodgoodgoodbestword", ["word", "good", "best", "word"]),
    content="[]",
  )
}

///|
test "example 3" {
  inspect!(
    find_substring("barfoofoobarthefoobarman", ["bar", "foo", "the"]),
    content="[6, 9, 12]",
  )
}
