///|
fn delete_duplicates(head : @immut/list.T[Int]) -> @immut/list.T[Int] {
  let mut ans : @immut/list.T[Int] = @immut/list.T::Nil
  let next = match head {
    Nil => return head
    Cons(_, next1) => next1
  }
  loop (head, next) {
    (Nil, _) => abort("unreachable")
    (Cons(v, _), Nil) => ans = Cons(v, ans)
    (Cons(v1, head_next), Cons(v2, next_next)) =>
      if v1 == v2 {
        continue (head_next, next_next)
      } else {
        ans = Cons(v1, ans)
        continue (head_next, next_next)
      }
  }
  ans.rev()
}
