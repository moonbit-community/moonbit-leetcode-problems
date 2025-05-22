enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq)

fn concat[X](
  list1 : @immut/list.T[X],
  list2 : @immut/list.T[X]
) -> @immut/list.T[X] {
  match list1 {
    Nil => list2
    Cons(head, tail) => Cons(head, concat(tail, list2))
  }
}

fn dfs(node : TreeNode) -> @immut/list.T[Int] {
  match node {
    Empty => Nil
    Node(val, left, right) => {
      let left_traverse = dfs(left)
      let right_traverse = dfs(right)
      concat(left_traverse, concat(right_traverse, Cons(val, Nil)))
    }
  }
}

fn postorder_traversal(root : TreeNode) -> @immut/list.T[Int] {
  dfs(root)
}
