enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

struct Solution {
  mut i : Int
  mut ok : Bool
  voyage : Array[Int]
  mut ans : @immut/list.T[Int]
}

fn Solution::new(voyage : Array[Int]) -> Solution {
  { i: 0, ok: true, voyage, ans: @immut/list.T::Nil }
}

fn Solution::flip_match_voyage(
  self : Solution,
  root : TreeNode
) -> @immut/list.T[Int] {
  self.dfs(root)
  if self.ok {
    self.ans
  } else {
    @immut/list.T::Cons(-1, @immut/list.T::Nil)
  }
}

fn Solution::dfs(self : Solution, root : TreeNode) -> Unit {
  match root {
    Empty => ()
    Node(val, left, right) => {
      if not(self.ok) || val != self.voyage[self.i] {
        self.ok = false
        return
      }
      self.i = self.i + 1
      match left {
        Node(lval, _, _) =>
          if lval == self.voyage[self.i] {
            self.dfs(left)
            self.dfs(right)
          }
        _ => {
          self.ans = @immut/list.T::Cons(val, self.ans)
          self.dfs(right)
          self.dfs(left)
        }
      }
    }
  }
}
