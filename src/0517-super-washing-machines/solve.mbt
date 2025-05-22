///|
fn find_min_moves(machines : Array[Int]) -> Int {
  let n : Int = machines.length()
  let mut s : Int = 0
  for i = 0; i < n; i = i + 1 {
    s = s + machines[i]
  }
  if s % n != 0 {
    return -1
  }
  let k : Int = s / n
  s = 0
  let mut ans : Int = 0
  for i = 0; i < n; i = i + 1 {
    let x = machines[i] - k
    s = s + x
    ans = max(ans, max(abs(s), x))
  }
  ans
}

///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

///|
fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}
