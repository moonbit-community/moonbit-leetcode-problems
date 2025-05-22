///|
test "example 1" {
  let word_list : @immut/list.T[String] = @immut/list.of([
    "hot", "dot", "dog", "lot", "log", "cog",
  ])
  assert_eq!(ladder_length("hit", "cog", word_list), 5)
}

///|
test "example 2" {
  let word_list : @immut/list.T[String] = @immut/list.of([
    "hot", "dot", "dog", "lot", "log",
  ])
  assert_eq!(ladder_length("hit", "cog", word_list), 0)
}
