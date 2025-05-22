fn flipgame(fronts : Array[Int], backs : Array[Int]) -> Int {
  let mut s : @immut/list.T[Int] = Nil
  let n = fronts.length()
  let mut i = 0
  while i < n {
    if fronts[i] == backs[i] {
      // Add to set if not present
      if not(s.contains(fronts[i])) {
        s = Cons(fronts[i], s)
      }
    }
    i = i + 1
  }
  let mut ans = 9999
  // Check fronts
  fronts.each(fn(v) { if not(s.contains(v)) { ans = min(ans, v) } })
  backs.each(fn(v) { if not(s.contains(v)) { ans = min(ans, v) } })
  // Check backs

  if ans == 9999 {
    0
  } else {
    ans
  }
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
