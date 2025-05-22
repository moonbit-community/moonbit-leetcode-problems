///|
test "example 1" {
  assert_eq!(
    large_group_positions("abbxxxxzzy"),
    @immut/list.of([@immut/list.of([3, 6])]),
  )
}

///|
test "example 2" {
  assert_eq!(large_group_positions("abc"), Nil)
}

///|
test "example 3" {
  assert_eq!(
    large_group_positions("abcdddeeeeaabbbcd"),
    @immut/list.of([
      @immut/list.of([3, 5]),
      @immut/list.of([6, 9]),
      @immut/list.of([12, 14]),
    ]),
  )
}
