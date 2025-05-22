///|
fn floor_div(x : Int, y : Int) -> Int {
  // Custom implementation of floor division
  let is_negative = (x < 0 && y > 0) || (x > 0 && y < 0)
  let abs_x = x.abs()
  let abs_y = y.abs()
  let result = abs_x / abs_y
  if is_negative && abs_x % abs_y != 0 {
    result - 1
  } else {
    result
  }
}

///|
fn count_largest_group(n : Int) -> Int {
  let cnt : Array[Int] = Array::make(40, 0)
  let mut mx = 0
  let mut ans = 0
  for i = 1; i <= n; i = i + 1 {
    let mut s = 0
    let mut x = i
    while x != 0 {
      s = s + x % 10
      x = floor_div(x, 10)
    }
    cnt[s] = cnt[s] + 1
    if mx < cnt[s] {
      mx = cnt[s]
      ans = 1
    } else if mx == cnt[s] {
      ans = ans + 1
    }
  }
  ans
}
