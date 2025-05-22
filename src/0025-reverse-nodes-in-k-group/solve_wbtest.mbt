test "example 1" {
  let list = @immut/list.T::of([1, 2, 3, 4, 5])
  let result = reverse_k_group(list, 2)
  assert_eq!(result, @immut/list.T::of([2, 1, 4, 3, 5]))
}

test "example 2" {
  let list = @immut/list.T::of([1, 2, 3, 4, 5])
  let result = reverse_k_group(list, 3)
  assert_eq!(result, @immut/list.T::of([3, 2, 1, 4, 5]))
}
