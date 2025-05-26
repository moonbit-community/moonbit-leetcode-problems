///|
pub struct ListNode {
  val : Int
  mut next : ListNode?
} derive(Eq, Show, ToJson)

///|
pub fn ListNode::from_array(vals : Array[Int]) -> ListNode? {
  vals.rev_fold(init=None, fn(next, val) { Some({ next, val }) })
}
