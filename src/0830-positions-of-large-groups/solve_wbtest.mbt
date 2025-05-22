test "example 1" {
  assert_eq!(
    large_group_positions("abbxxxxzzy"),
    @immut/list.T::of([@immut/list.T::of([3, 6])]),
  )
}

test "example 2" {
  assert_eq!(large_group_positions("abc"), Nil)
}

test "example 3" {
  assert_eq!(
    large_group_positions("abcdddeeeeaabbbcd"),
    @immut/list.T::of(
      [
        @immut/list.T::of([3, 5]),
        @immut/list.T::of([6, 9]),
        @immut/list.T::of([12, 14]),
      ],
    ),
  )
}
