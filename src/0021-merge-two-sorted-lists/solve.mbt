///|
fn merge_two_sorted_lists(
  l1 : @immut/list.T[Int],
  l2 : @immut/list.T[Int]
) -> @immut/list.T[Int] {
  match (l1, l2) {
    (Nil, _) => l2
    (_, Nil) => l1
    (Cons(n1, l1), Cons(n2, l2)) =>
      if n1 <= n2 {
        @immut/list.T::Cons(n1, merge_two_sorted_lists(l1, Cons(n2, l2)))
      } else {
        @immut/list.T::Cons(n2, merge_two_sorted_lists(Cons(n1, l1), l2))
      }
  }
}
