fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn find_kth_number(m : Int, n : Int, k : Int) -> Int {
  let mut left : Int = 1
  let mut right : Int = m * n
  while left < right {
    let mid : Int = (left + right) / 2
    let mut cnt : Int = 0
    for i = 1; i <= m; i = i + 1 {
      cnt = cnt + min(mid / i, n)
    }
    if cnt >= k {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}
