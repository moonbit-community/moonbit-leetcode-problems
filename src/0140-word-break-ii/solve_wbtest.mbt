///|
test "wordBreak example 1" {
  let trie = Trie::new()
  trie.insert("cat")
  trie.insert("cats")
  trie.insert("and")
  trie.insert("sand")
  trie.insert("dog")
  let result = dfs(trie, "catsanddog")
  let expected : @immut/list.T[@immut/list.T[String]] = @immut/list.T::of([
    @immut/list.T::of(["cats and dog", "cat sand dog"]),
  ])
  assert_eq!(list_to_string(result), list_to_string(expected))
}
