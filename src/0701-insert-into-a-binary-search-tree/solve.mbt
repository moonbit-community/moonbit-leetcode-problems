// Definition for a binary tree node

///|
enum TreeNode[T] {
  Empty
  Node(T, TreeNode[T], TreeNode[T])
} derive(Eq, Show)

///|
fn[T : Compare] TreeNode::insert(self : TreeNode[T], val : T) -> TreeNode[T] {
  match self {
    Empty => Node(val, Empty, Empty)
    Node(data, left, right) =>
      if data < val {
        let right = right.insert(val)
        Node(data, left, right)
      } else {
        let left = left.insert(val)
        Node(data, left, right)
      }
  }
}
