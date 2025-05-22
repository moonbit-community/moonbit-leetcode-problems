///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
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
fn min_moves(nums : Array[Int], limit : Int) -> Int {
  let n = nums.length()
  let d = Array::make(limit * 2 + 2, 0)
  for i = 0; i < n / 2; i = i + 1 {
    let a = min(nums[i], nums[n - i - 1])
    let b = max(nums[i], nums[n - i - 1])
    d[2] = d[2] + 2
    d[limit * 2 + 1] = d[limit * 2 + 1] - 2
    d[a + 1] = d[a + 1] - 1
    d[b + limit + 1] = d[b + limit + 1] + 1
    d[a + b] = d[a + b] - 1
    d[a + b + 1] = d[a + b + 1] + 1
  }
  let mut ans = n
  let mut s = 0
  for i = 2; i <= limit * 2; i = i + 1 {
    s = s + d[i]
    if ans > s {
      ans = s
    }
  }
  ans
}
