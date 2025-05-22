///|
test "palindrome_pairs example" {
  let words = ["abcd", "dcba", "lls", "s", "sssll"]
  let expected = @immut/list.T::of([
    @immut/list.T::of([0, 1]),
    @immut/list.T::of([1, 0]),
    @immut/list.T::of([3, 2]),
    @immut/list.T::of([2, 4]),
  ])
  assert_eq!(palindrome_pairs(words), expected)
}
