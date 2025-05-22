///|
fn insert_into_sorted_list(
  node : Int,
  list : @immut/list.T[Int]
) -> @immut/list.T[Int] {
  match list {
    Nil => Cons(node, Nil)
    Cons(curr, next) =>
      if curr >= node {
        Cons(node, Cons(curr, next))
      } else {
        Cons(curr, insert_into_sorted_list(node, next))
      }
  }
}

///|
fn merge_k_sorted_lists(
  lists : Array[@immut/list.T[Int]]
) -> @immut/list.T[Int] {
  let mut result = @immut/list.T::Nil
  for i = 0; i < lists.length(); i = i + 1 {
    loop lists[i] {
      Nil => ()
      Cons(node, next) => {
        result = insert_into_sorted_list(node, result)
        continue next
      }
    }
  }
  result
}
