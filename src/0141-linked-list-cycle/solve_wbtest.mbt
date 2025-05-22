///|
test "example 1" {
  let list_no_cycle : ListNode = Node(1, Node(2, Node(3, Empty)))
  @test.is_false!(has_cycle(list_no_cycle))
}

///|
test "example 2" {
  let mut list_cycle : ListNode = Node(1, Node(2, Node(3, Empty)))
  let last_node : ListNode = Node(4, list_cycle)
  list_cycle = Node(1, Node(2, Node(3, last_node)))
  assert_eq!(has_cycle(list_cycle), true)
}
