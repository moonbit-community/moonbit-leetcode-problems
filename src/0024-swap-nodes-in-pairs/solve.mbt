fn swap_pairs[Int](list : @immut/list.T[Int]) -> @immut/list.T[Int] {
  match list {
    Nil => Nil
    Cons(curr, Nil) => Cons(curr, Nil)
    Cons(left, Cons(right, next)) => Cons(right, Cons(left, swap_pairs(next)))
  }
}

// Test cases
