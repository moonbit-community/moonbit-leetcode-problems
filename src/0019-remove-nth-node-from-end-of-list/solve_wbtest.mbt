///|
test "example 1" {
  let head = @immut/list.of([1, 2, 3, 4])
  let result = remove_nth_from_end(head, 4)
  assert_eq!(result, @immut/list.of([2, 3, 4]))
}

///|
test "example 2" {
  let head = @immut/list.of([1])
  let result = remove_nth_from_end(head, 1)
  assert_eq!(result, @immut/list.of([]))
}
