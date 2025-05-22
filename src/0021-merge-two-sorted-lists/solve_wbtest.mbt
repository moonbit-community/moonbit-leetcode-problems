test "example 1" {
  let l1 = @immut/list.T::of([1, 2, 4])
  let l2 = @immut/list.T::of([1, 3, 4])
  assert_eq!(
    merge_two_sorted_lists(l1, l2),
    @immut/list.T::of([1, 1, 2, 3, 4, 4]),
  )
}

test "example 2" {
  let l1 = @immut/list.T::of([])
  let l2 = @immut/list.T::of([])
  assert_eq!(merge_two_sorted_lists(l1, l2), @immut/list.T::of([]))
}

test "example 3" {
  let l1 = @immut/list.T::of([])
  let l2 = @immut/list.T::of([0])
  assert_eq!(merge_two_sorted_lists(l1, l2), @immut/list.T::of([0]))
}
