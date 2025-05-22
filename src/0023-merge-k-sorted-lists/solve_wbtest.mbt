test "example 1" {
  let lists = [
    @immut/list.T::of([1, 4, 5]),
    @immut/list.T::of([1, 3, 4]),
    @immut/list.T::of([2, 6]),
  ]
  let expected = @immut/list.T::of([1, 1, 2, 3, 4, 4, 5, 6])
  assert_eq!(merge_k_sorted_lists(lists), expected)
}

test "example 2" {
  let lists : Array[@immut/list.T[Int]] = []
  let expected = @immut/list.T::of([])
  assert_eq!(merge_k_sorted_lists(lists), expected)
}

test "example 3" {
  let lists : Array[@immut/list.T[Int]] = [@immut/list.T::of([])]
  let expected = @immut/list.T::of([])
  assert_eq!(merge_k_sorted_lists(lists), expected)
}
