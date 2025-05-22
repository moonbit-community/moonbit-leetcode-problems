///|
fn find_max_consecutive_ones(nums : Array[Int]) -> Int {
  let n : Int = nums.length()
  let left : Array[Int] = Array::make(n, 0)
  let right : Array[Int] = Array::make(n, 0)
  let mut i : Int = 0
  while i < n {
    if nums[i] == 1 {
      left[i] = if i == 0 { 1 } else { left[i - 1] + 1 }
    }
    i = i + 1
  }
  i = n - 1
  while i >= 0 {
    if nums[i] == 1 {
      right[i] = if i == n - 1 { 1 } else { right[i + 1] + 1 }
    }
    i = i - 1
  }
  let mut ans : Int = 0
  i = 0
  while i < n {
    let mut t : Int = 0
    if i > 0 {
      t = t + left[i - 1]
    }
    if i < n - 1 {
      t = t + right[i + 1]
    }
    ans = max(ans, t + 1)
    i = i + 1
  }
  ans
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
