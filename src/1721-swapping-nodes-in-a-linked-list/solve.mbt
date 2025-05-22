// Define the ListNode type for the linked list
struct ListNode {
  mut val : Int
  mut next : ListNode?
}

// Implement the Eq trait for ListNode
fn ListNode::op_equal(self : ListNode, other : ListNode) -> Bool {
  self.val == other.val && self.next == other.next
}

// Function to swap the kth node from the beginning and the kth node from the end
fn swap_nodes_in_linked_list(head : ListNode?, k : Int) -> ListNode? {
  if head == None {
    return None
  }

  // Helper function to get the length of the linked list
  fn get_length(head : ListNode?) -> Int {
    let mut length = 0
    let mut current = head
    while current != None {
      length = length + 1
      current = current.unwrap().next
    }
    length
  }

  let length = get_length(head)
  if k > length {
    return head
  }

  // Find the kth node from the beginning
  let mut current = head
  let mut count = 1
  while count < k {
    current = current.unwrap().next
    count = count + 1
  }
  let kth_from_beginning = current

  // Find the kth node from the end
  let mut kth_from_end = head
  let mut count = 1
  while count <= length - k {
    kth_from_end = kth_from_end.unwrap().next
    count = count + 1
  }

  // Swap the values of the kth node from the beginning and the kth node from the end
  let temp = kth_from_beginning.unwrap().val
  kth_from_beginning.unwrap().val = kth_from_end.unwrap().val
  kth_from_end.unwrap().val = temp
  head
}

// Helper function to create a linked list from an array
fn create_linked_list(arr : Array[Int]) -> ListNode? {
  if arr.length() == 0 {
    return None
  }
  let head = ListNode::{ val: arr[0], next: None }
  let mut current = head
  for i = 1; i < arr.length(); i = i + 1 {
    current.next = Some(ListNode::{ val: arr[i], next: None })
    current = current.next.unwrap()
  }
  Some(head)
}

// Helper function to convert a linked list to an array
fn linked_list_to_array(head : ListNode?) -> Array[Int] {
  let arr = Array::make(0, 0)
  let mut current = head
  while current != None {
    arr.push(current.unwrap().val)
    current = current.unwrap().next
  }
  arr
}

// Test cases
