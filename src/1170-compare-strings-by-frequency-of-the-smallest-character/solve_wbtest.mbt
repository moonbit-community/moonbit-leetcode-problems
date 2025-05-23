///|
test "example" {
  let queries : @immut/list.T[String] = @immut/list.of(["bbb", "cc"])
  let words : @immut/list.T[String] = @immut/list.of(["a", "aa", "aaa", "aaaa"])
  assert_eq!(num_smaller_by_frequency(queries, words), @immut/list.of([1, 2]))
}
