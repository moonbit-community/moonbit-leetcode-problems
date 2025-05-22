test "example 1" {
  assert_eq!(find_contest_match(2), "(1,2)")
}

test "example 2" {
  assert_eq!(find_contest_match(4), "((1,4),(2,3))")
}

test "example 3" {
  assert_eq!(find_contest_match(8), "(((1,8),(4,5)),((2,7),(3,6)))")
}
