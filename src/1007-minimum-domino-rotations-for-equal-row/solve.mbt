///|
fn f(x : Int, tops : Array[Int], bottoms : Array[Int], n : Int) -> Int {
  let mut cnt1 = 0
  let mut cnt2 = 0
  for i = 0; i < n; i = i + 1 {
    if tops[i] != x && bottoms[i] != x {
      return n + 1
    }
    cnt1 = cnt1 + (if tops[i] == x { 1 } else { 0 })
    cnt2 = cnt2 + (if bottoms[i] == x { 1 } else { 0 })
  }
  return n - max(cnt1, cnt2)
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn min_domino_rotations(tops : Array[Int], bottoms : Array[Int]) -> Int {
  let n = tops.length()
  let ans = min(f(tops[0], tops, bottoms, n), f(bottoms[0], tops, bottoms, n))
  if ans > n {
    -1
  } else {
    ans
  }
}
