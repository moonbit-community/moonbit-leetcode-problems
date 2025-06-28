///|
test "palindrome_pairs example" {
  let words = ["abcd", "dcba", "lls", "s", "sssll"]
  let expected = @immut/list.of([
    @immut/list.of([0, 1]),
    @immut/list.of([1, 0]),
    @immut/list.of([3, 2]),
    @immut/list.of([2, 4]),
  ])
  assert_eq(palindrome_pairs(words), expected)
}
