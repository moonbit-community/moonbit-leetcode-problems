///|
pub fn connect(root : Tree) -> Tree {
  match root {
    Empty => Empty
    Node(val, left, right, next) => {
      let c_left : Tree = match left {
        Empty => Empty
        Node(lval, lleft, lright, _) => Node(lval, lleft, lright, right) // Setting left's next to right
      }
      let c_right : Tree = match (right, next) {
        (Empty, _) => Empty
        (Node(rval, rleft, rright, _), Empty) =>
          Node(rval, rleft, rright, Empty)
        (Node(rval, rleft, rright, _), Node(_nval, nleft, _, _)) =>
          Node(rval, rleft, rright, nleft) // Setting right's next if next is not empty
      }
      Node(val, connect(c_left), connect(c_right), next)
    }
  }
}
