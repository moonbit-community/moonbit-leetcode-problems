///|
fn remove_nth_from_end(
  head : @immut/list.T[Int],
  n : Int
) -> @immut/list.T[Int] {
  let mut first = head
  let second = head
  // Advances first pointer so that the gap between first and second is n nodes apart
  for i = 0; i <= n; i = i + 1 {
    first = match first {
      Nil => first
      Cons(_, next) => next
    }
  }

  // Move first to the end, maintaining the gap
  let (_, second) = loop (first, second) {
    (Nil, _) => break (first, second)
    (Cons(_), Nil) => abort("Unreachable")
    (Cons(_, first_next), Cons(_, second_next)) =>
      continue (first_next, second_next)
  }
  match second {
    Cons(_, nextNext) => nextNext
    Nil => Nil
  }
}
