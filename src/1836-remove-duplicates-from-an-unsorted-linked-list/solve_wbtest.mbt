///|
test "example 1" {
  let head = create_linked_list([1, 2, 3, 2])
  let result = remove_duplicates(head)
  assert_eq(linked_list_to_array(result), [1, 3])
}

///|
test "example 2" {
  let head = create_linked_list([2, 1, 1, 2])
  let result = remove_duplicates(head)
  assert_eq(linked_list_to_array(result), [])
}

///|
test "example 3" {
  let head = create_linked_list([3, 2, 2, 1, 3, 2, 4])
  let result = remove_duplicates(head)
  assert_eq(linked_list_to_array(result), [1, 4])
}
