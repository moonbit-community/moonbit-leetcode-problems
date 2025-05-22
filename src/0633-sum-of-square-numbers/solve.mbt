fn judge_square_sum(c : Int) -> Bool {
  let mut a : Int = 0
  let mut b : Int = sqrt_int(c)
  while a <= b {
    let s : Int = a * a + b * b
    if s == c {
      return true
    }
    if s < c {
      a = a + 1
    } else {
      b = b - 1
    }
  }
  false
}

fn sqrt_int(c : Int) -> Int {
  let mut start : Int = 0
  let mut end : Int = c
  let mut ans : Int = -1
  while start <= end {
    let mid : Int = (start + end) / 2
    let square : Int = mid * mid
    if square == c {
      return mid
    } else if square < c {
      start = mid + 1
      ans = mid
    } else {
      end = mid - 1
    }
  }
  ans
}
