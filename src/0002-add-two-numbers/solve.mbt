struct ListNode {
  val : Int
  mut next : ListNode?
} derive(Eq, Show)

fn add_two_numbers(l1 : ListNode?, l2 : ListNode?) -> ListNode? {
  let dummy_head = ListNode::{ val: 0, next: Option::None }
  let mut current = dummy_head
  let mut carry = 0
  let mut p = l1
  let mut q = l2
  while p != Option::None || q != Option::None {
    let x = if p != Option::None { p.unwrap().val } else { 0 }
    let y = if q != Option::None { q.unwrap().val } else { 0 }
    let sum = carry + x + y
    carry = sum / 10
    current.next = Option::Some(ListNode::{ val: sum % 10, next: Option::None })
    current = current.next.unwrap()
    if p != Option::None {
      p = p.unwrap().next
    }
    if q != Option::None {
      q = q.unwrap().next
    }
  }
  if carry > 0 {
    current.next = Option::Some(ListNode::{ val: carry, next: Option::None })
  }
  dummy_head.next
}
