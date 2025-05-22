///|
test "example 1" {
  let s = "abcda"
  let queries = @immut/list.T::of([(0, 3, 1), (1, 2, 0), (0, 3, 2), (0, 4, 1)])
  let expected_ans = @immut/list.T::of([true, false, true, true])
  assert_eq!(can_make_pali_queries(s, queries), expected_ans)
}

///|
test "example 2" {
  let s = "hannah"
  let queries = @immut/list.T::of([(0, 5, 2), (0, 3, 1), (1, 4, 1)])
  let expected_ans = @immut/list.T::of([true, true, true])
  assert_eq!(can_make_pali_queries(s, queries), expected_ans)
}
