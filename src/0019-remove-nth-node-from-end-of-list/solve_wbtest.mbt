///|
test "example 1" {
  let head = @immut/list.T::of([1, 2, 3, 4])
  let result = remove_nth_from_end(head, 4)
  assert_eq!(result, @immut/list.T::of([2, 3, 4]))
}

///|
test "example 2" {
  let head = @immut/list.T::of([1])
  let result = remove_nth_from_end(head, 1)
  assert_eq!(result, @immut/list.T::of([]))
}
