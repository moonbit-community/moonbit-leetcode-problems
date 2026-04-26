///|
fn[X : Show] split(
  this : @immut/list.T[X],
  k : Int,
) -> (@immut/list.T[X], @immut/list.T[X]) {
  for xs = this, remaining = k, acc = @immut/list.T::Nil {
    match xs {
      Nil => break (acc, Nil)
      Cons(x, rest) =>
        if remaining > 1 {
          continue rest, remaining - 1, Cons(x, acc)
        } else {
          break (Cons(x, acc), rest)
        }
    }
  }
}

///|
fn[X : Eq + Show] reverse_k_group(
  head : @immut/list.T[X],
  k : Int,
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
