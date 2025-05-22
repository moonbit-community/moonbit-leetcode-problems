///|
struct Coordinate {
  i : Int
  k : Int
}

///|
fn minimum_jumps(forbidden : Array[Int], a : Int, b : Int, x : Int) -> Int {
  fn shift_front(
    q : @immut/list.T[Coordinate]
  ) -> (Coordinate, @immut/list.T[Coordinate]) {
    match q {
      @immut/list.T::Nil => abort("Trying to shift from an empty list")
      @immut/list.T::Cons(head, tail) => (head, tail)
    }
  }

  let forbidden_set = @immut/list.T::from_array(forbidden)
  let n = 6000
  let mut q = @immut/list.of([Coordinate::{ i: 0, k: 1 }])
  let vis = Array::make(n, [false, false])
  let mut ans = 0
  while not(q.is_empty()) {
    let t = q.length()
    let mut current_loop = t
    while current_loop > 0 {
      let mut next : @immut/list.T[Coordinate] = @immut/list.of([])
      let (current, new_q) = shift_front(q)
      q = new_q
      current_loop = current_loop - 1
      if current.i == x {
        return ans
      }
      next = next.concat(
        @immut/list.of([Coordinate::{ i: current.i + a, k: 1 }]),
      )
      if (current.k & 1) == 1 {
        next = next.concat(
          @immut/list.of([Coordinate::{ i: current.i - b, k: 0 }]),
        )
      }
      next.each(fn(new_coord) {
        if new_coord.i >= 0 &&
          new_coord.i < n &&
          not(forbidden_set.contains(new_coord.i)) &&
          not(vis[new_coord.i][new_coord.k]) {
          vis[new_coord.i][new_coord.k] = true
          q = q.concat(@immut/list.of([new_coord]))
        }
      })
    }
    ans = ans + 1
  }
  -1
}
