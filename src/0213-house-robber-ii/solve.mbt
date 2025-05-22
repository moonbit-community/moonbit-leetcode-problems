///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn rob(nums : Array[Int]) -> Int {
  let n = nums.length()
  if n == 1 {
    return nums[0]
  }
  fn robRange(nums : Array[Int], l : Int, r : Int) -> Int {
    let mut f = 0
    let mut g = 0
    let mut i = l
    while i <= r {
      let temp = f
      f = max(f, g)
      g = temp + nums[i]
      i = i + 1
    }
    max(f, g)
  }

  max(robRange(nums, 0, n - 2), robRange(nums, 1, n - 1))
}
