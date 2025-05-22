///|
fn max(a : Int, b : Int) -> Int {
  match a > b {
    true => a
    false => b
  }
}

///|
fn min_taps(n : Int, ranges : Array[Int]) -> Int {
  let last = Array::make(n + 1, 0)
  for i = 0; i <= n; i = i + 1 {
    let l = max(0, i - ranges[i])
    let r = i + ranges[i]
    last[l] = max(last[l], r)
  }
  let mut ans = 0
  let mut mx = 0
  let mut pre = 0
  for i = 0; i < n; i = i + 1 {
    mx = max(mx, last[i])
    if mx <= i {
      return -1
    }
    if pre == i {
      ans = ans + 1
      pre = mx
    }
  }
  ans
}
