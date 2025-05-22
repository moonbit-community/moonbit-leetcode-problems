test "example 1" {
  let head = create_linked_list([1, 2, 3, 4, 5])
  let k = 2
  let new_head = swap_nodes_in_linked_list(head, k)
  let result = linked_list_to_array(new_head)
  assert_eq!(result, [1, 4, 3, 2, 5])
}

test "example 2" {
  let head = create_linked_list([7, 9, 6, 6, 7, 8, 3, 0, 9, 5])
  let k = 5
  let new_head = swap_nodes_in_linked_list(head, k)
  let result = linked_list_to_array(new_head)
  assert_eq!(result, [7, 9, 6, 6, 8, 7, 3, 0, 9, 5])
}
