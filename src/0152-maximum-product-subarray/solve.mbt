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
fn max_product(nums : Array[Int]) -> Int {
  let mut f = nums[0]
  let mut g = nums[0]
  let mut ans = nums[0]
  let mut i = 1
  while i < nums.length() {
    let ff = f
    let gg = g
    f = max(nums[i], max(ff * nums[i], gg * nums[i]))
    g = min(nums[i], min(ff * nums[i], gg * nums[i]))
    ans = max(ans, f)
    i = i + 1
  }
  ans
}
