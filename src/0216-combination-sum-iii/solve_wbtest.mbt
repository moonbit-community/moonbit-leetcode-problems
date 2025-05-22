test "example 1" {
  let ans = combination_sum3(3, 7)
  assert_eq!(ans, @immut/list.T::of([@immut/list.T::of([1, 2, 4])]))
}

test "example 2" {
  let ans = combination_sum3(3, 9)
  assert_eq!(
    ans,
    @immut/list.T::of(
      [
        @immut/list.T::of([1, 2, 6]),
        @immut/list.T::of([1, 3, 5]),
        @immut/list.T::of([2, 3, 4]),
      ],
    ),
  )
}
