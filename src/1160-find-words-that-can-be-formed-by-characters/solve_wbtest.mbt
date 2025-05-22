///|
test "example 1" {
  let words = @immut/list.T::of(["cat", "bt", "hat", "tree"])
  let chars = "atach"
  assert_eq!(count_characters(words, chars), 6)
}

///|
test "example 2" {
  let words = @immut/list.T::of(["hello", "world", "leetcode"])
  let chars = "welldonehoneyr"
  assert_eq!(count_characters(words, chars), 10)
}
