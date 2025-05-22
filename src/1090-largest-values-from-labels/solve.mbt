///|
fn larger_pair(a : (Int, Int), b : (Int, Int)) -> Bool {
  a.0 > b.0
}

///|
fn sort_pairs(pairs : @immut/list.T[(Int, Int)]) -> @immut/list.T[(Int, Int)] {
  match pairs {
    Nil => Nil
    Cons(head, Nil) => Cons(head, Nil)
    _ => {
      let pivot = pairs.nth_exn(0)
      let (left, right) = pairs.fold_left(
        init=(@immut/list.T::Nil, @immut/list.T::Nil),
        fn(
          acc : (@immut/list.T[(Int, Int)], @immut/list.T[(Int, Int)]),
          item : (Int, Int)
        ) -> (@immut/list.T[(Int, Int)], @immut/list.T[(Int, Int)]) {
          if larger_pair(item, pivot) {
            (Cons(item, acc.0), acc.1)
          } else {
            (acc.0, Cons(item, acc.1))
          }
        },
      )
      sort_pairs(left).concat(Cons(pivot, sort_pairs(right)))
    }
  }
}

///|
fn largest_vals_from_labels(
  values : Array[Int],
  labels : Array[Int],
  num_wanted : Int,
  use_limit : Int
) -> Int {
  let n = values.length()
  let mut pairs = @immut/list.T::of([])
  for i = 0; i < n; i = i + 1 {
    pairs = pairs.concat(@immut/list.T::of([(values[i], labels[i])]))
  }
  let sorted_pairs = sort_pairs(pairs)
  let cnt : @hashmap.T[Int, Int] = @hashmap.new()
  let mut ans = 0
  let mut num = 0
  let list_len = sorted_pairs.length()
  for i = 0; i < list_len && num < num_wanted; i = i + 1 {
    let pair = sorted_pairs.nth_exn(i)
    let v = pair.0
    let l = pair.1
    let current_count = cnt.get(l)
    if current_count == None {
      cnt.set(l, 0)
    }
    if current_count.or(0) < use_limit {
      cnt.set(l, current_count.or(0) + 1)
      num = num + 1
      ans = ans + v
    }
  }
  ans
}
