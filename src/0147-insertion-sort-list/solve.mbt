///|
pub fn insertion_sort_list(head : ListNode?) -> ListNode? {
  guard head is Some({ next: Some(_) as next, .. } as head) else { head }
  let dummy = { val: 0, next: Some(head) }
  for prev = head, curr = next {
    guard curr is Some(curr) else { break dummy.next }
    if prev.val <= curr.val {
      continue curr, curr.next
    }
    let insert_pos = for pos = dummy {
      guard pos.next is Some(next) && next.val <= curr.val else { break pos }
      continue next
    }
    // Now we have:
    // insert_pos.val <= curr.val
    // insert_pos.next.val > curr.val (if exists)
    let tmp = curr.next
    curr.next = insert_pos.next
    insert_pos.next = Some(curr)
    prev.next = tmp
    continue prev, tmp
  }
}
