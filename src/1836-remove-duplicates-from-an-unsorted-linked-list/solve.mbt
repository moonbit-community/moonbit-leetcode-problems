///|
struct ListNode {
  val : Int
  mut next : ListNode?
} derive(Eq)

///|
fn remove_duplicates(head : ListNode?) -> ListNode? {
  if head == None {
    return None
  }
  let count_map : @hashmap.T[Int, Int] = @hashmap.new()
  let mut current : ListNode? = head

  // First pass: count occurrences of each value
  while current != None {
    let val = current.unwrap().val
    count_map.set(val, count_map.get_or_default(val, 0) + 1)
    current = current.unwrap().next
  }

  // Second pass: remove nodes with values appearing more than once
  let dummy_head = ListNode::{ val: 0, next: head }
  let mut prev : ListNode? = Some(dummy_head)
  current = head
  while current != None {
    let val = current.unwrap().val
    if count_map.get_or_default(val, 0) > 1 {
      // Skip this node
      prev.unwrap().next = current.unwrap().next
    } else {
      // Move to the next node
      prev = current
    }
    current = current.unwrap().next
  }
  return dummy_head.next
}

// Helper function to create a linked list from an array
///|
fn create_linked_list(values : Array[Int]) -> ListNode? {
  if values.length() == 0 {
    return None
  }
  let dummy_head = ListNode::{ val: 0, next: None }
  let mut current : ListNode? = Some(dummy_head)
  for i = 0; i < values.length(); i = i + 1 {
    current.unwrap().next = Some(ListNode::{ val: values[i], next: None })
    current = current.unwrap().next
  }
  return dummy_head.next
}

// Helper function to convert a linked list to an array for testing
///|
fn linked_list_to_array(head : ListNode?) -> Array[Int] {
  let result : Array[Int] = []
  let mut current : ListNode? = head
  while current != None {
    result.push(current.unwrap().val)
    current = current.unwrap().next
  }
  return result
}
