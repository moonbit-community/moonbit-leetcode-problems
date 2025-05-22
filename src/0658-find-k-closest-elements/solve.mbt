fn find_closest_elements(
  arr : Array[Int],
  k : Int,
  x : Int
) -> @immut/list.T[Int] {
  // Convert the immutable Array to a mutable @immut/list.T for easier manipulation
  let mut list : @immut/list.T[Int] = @immut/list.from_array(arr).rev()
  list = list.rev()
  for l = 0, r = arr.length(); r - l > k; {
    if x - list.nth_exn(l) <= list.nth_exn(r - 1) - x {
      continue l, r - 1
    } else {
      continue l + 1, r
    }
  } else {
    let mut ans : @immut/list.T[Int] = Nil
    for i = l; i < r; i = i + 1 {
      ans = Cons(list.nth_exn(i), ans)
    }
    ans.rev()
  }
}
