fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn rob(nums : Array[Int]) -> Int {
  let mut f = 0
  let mut g = 0
  let n = nums.length()
  let mut i = 0
  while i < n {
    let ff = max(f, g)
    g = f + nums[i]
    f = ff
    i = i + 1
  }
  max(f, g)
}
