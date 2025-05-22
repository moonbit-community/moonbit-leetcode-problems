test "example 1" {
  let list : ListNode = Node(4, Node(2, Node(1, Node(3, Empty))))
  let sorted_list : ListNode = Node(1, Node(2, Node(3, Node(4, Empty))))
  assert_eq!(insertion_sort_list(list), sorted_list)
}

test "example 2" {
  let list : ListNode = Node(-1, Node(5, Node(3, Node(4, Node(0, Empty)))))
  let sorted_list : ListNode = Node(
    -1,
    Node(0, Node(3, Node(4, Node(5, Empty)))),
  )
  assert_eq!(insertion_sort_list(list), sorted_list)
}
