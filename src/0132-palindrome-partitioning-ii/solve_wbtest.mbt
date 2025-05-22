///|
test "min cut of palindrome partitioning" {
  assert_eq!(min_cut("aab"), 1)
  assert_eq!(min_cut("a"), 0)
  assert_eq!(min_cut("ab"), 1)
}
