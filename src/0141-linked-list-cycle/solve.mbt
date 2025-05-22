enum ListNode {
  Empty
  Node(Int, ListNode)
} derive(Eq, Show)

fn has_cycle(head : ListNode) -> Bool {
  let mut slow : ListNode = head
  let mut fast : ListNode = head
  while true {
    slow = match slow {
      Node(_, slow_next) => slow_next
      Empty => return false // Once slow reaches end, no cycle
    }

    // Fast pointer moves twice as quickly
    fast = match fast {
      Node(_, fast_next1) =>
        match fast_next1 {
          Node(_, fast_next2) => fast_next2
          Empty => return false
        }
      Empty => return false
    }
    if slow == fast {
      return true
    }
  }
  false
}
