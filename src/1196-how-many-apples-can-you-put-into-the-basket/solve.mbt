///|
fn max_number_of_apples(weights : @immut/list.T[Int]) -> Int {
  letrec merge_sort = fn(list : @immut/list.T[Int]) -> @immut/list.T[Int] {
    match list {
      Nil => list
      Cons(_, Nil) => list
      _ => {
        let (left, right) = split(list)
        merge(merge_sort(left), merge_sort(right))
      }
    }
  }
  and split = fn(
    list : @immut/list.T[Int]
  ) -> (@immut/list.T[Int], @immut/list.T[Int]) {
    let mid = list.length() / 2
    (list.take(mid), list.drop(mid))
  }
  and merge = fn(
    left : @immut/list.T[Int],
    right : @immut/list.T[Int]
  ) -> @immut/list.T[Int] {
    match (left, right) {
      (Nil, _) => right
      (_, Nil) => left
      (Cons(l_head, l_tail), Cons(r_head, r_tail)) =>
        if l_head < r_head {
          Cons(l_head, merge(l_tail, right))
        } else {
          Cons(r_head, merge(left, r_tail))
        }
    }
  }

  let sorted_weights = merge_sort(weights)
  let (count, _) = sorted_weights.fold_left(init=(0, 0), fn(
    acc : (Int, Int),
    w : Int
  ) -> (Int, Int) {
    let (count, total) = acc
    let new_total = total + w
    if new_total > 5000 {
      (count, total)
    } else {
      (count + 1, new_total)
    }
  })
  count
}
