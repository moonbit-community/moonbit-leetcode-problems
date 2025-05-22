///|
fn[X : Show] split(
  this : @immut/list.T[X],
  k : Int
) -> (@immut/list.T[X], @immut/list.T[X]) {
  loop this, k, @immut/list.T::Nil {
    Nil, _, acc => break (acc, Nil)
    Cons(x, xs), k, acc =>
      if k > 1 {
        continue xs, k - 1, Cons(x, acc)
      } else {
        break (Cons(x, acc), xs)
      }
  }
}

///|
fn[X : Eq + Show] reverse_k_group(
  head : @immut/list.T[X],
  k : Int
) -> @immut/list.T[X] {
  if k <= 1 || head == Nil {
    return head
  }
  let (curr, next) = split(head, k)
  if curr.length() < k {
    return head.concat(next) // If the length of `curr` is less than `k`, concatenate `head` and `next` directly.
  }
  curr.concat(reverse_k_group(next, k))
}
