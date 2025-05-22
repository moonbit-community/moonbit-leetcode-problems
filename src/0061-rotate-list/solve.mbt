///|
struct ListNode {
  val : Int
  mut next : ListNode?
} derive(Eq, Show)

///|
fn rotate_right(head : ListNode, k : Int) -> ListNode {
  if k == 0 || head.next == None {
    return head
  }
  let mut n = 1
  let mut iter = head
  while iter.next != None {
    iter = iter.next.unwrap()
    n += 1
  }
  let mut add = n - k % n
  if add == n {
    return head
  }
  iter.next = Option::Some(head)
  while add > 0 {
    add -= 1
    iter = iter.next.unwrap()
  }
  let ret = iter.next.unwrap()
  iter.next = None
  ret
}
