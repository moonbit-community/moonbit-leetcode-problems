///|
test "example 1" {
  let list : ListNode = Node(1, Node(2, Node(2, Node(1, Nil))))
  assert_eq!(is_palindrome(list), true)
}

///|
test "example 2" {
  let list : ListNode = Node(1, Node(2, Nil))
  assert_eq!(is_palindrome(list), false)
}
