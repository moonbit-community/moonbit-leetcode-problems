///|
test "example 1" {
  let s = "abcda"
  let queries = @immut/list.of([(0, 3, 1), (1, 2, 0), (0, 3, 2), (0, 4, 1)])
  let expected_ans = @immut/list.of([true, false, true, true])
  assert_eq(can_make_pali_queries(s, queries), expected_ans)
}

///|
test "example 2" {
  let s = "hannah"
  let queries = @immut/list.of([(0, 5, 2), (0, 3, 1), (1, 4, 1)])
  let expected_ans = @immut/list.of([true, true, true])
  assert_eq(can_make_pali_queries(s, queries), expected_ans)
}
