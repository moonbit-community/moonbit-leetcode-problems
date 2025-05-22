fn minimum_semesters(n : Int, relations : Array[Array[Int]]) -> Int {
  let g = Array::make(n, @immut/list.T::Nil)
  let indeg : Array[Int] = Array::make(n, 0)
  relations.each(
    fn(r) {
      let prev = r[0] - 1
      let nxt = r[1] - 1
      g[prev] = Cons(nxt, g[prev])
      indeg[nxt] = indeg[nxt] + 1
    },
  )
  let mut q : @immut/list.T[Int] = Nil
  for i = 0; i < n; i = i + 1 {
    if indeg[i] == 0 {
      q = Cons(i, q)
    }
  }
  let mut ans = 0
  let mut n = n
  while not(q == Nil) {
    ans = ans + 1
    let mut k = q.length()
    while k > 0 {
      let i = q.head_exn()
      q = q.tail()
      n = n - 1
      g[i].each(
        fn(j) {
          indeg[j] = indeg[j] - 1
          if indeg[j] == 0 {
            q = Cons(j, q)
          }
        },
      )
      k = k - 1
    }
  }
  if n == 0 {
    ans
  } else {
    -1
  }
}
