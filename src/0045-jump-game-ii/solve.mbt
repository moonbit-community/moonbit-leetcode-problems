fn jump(nums : Array[Int]) -> Int {
  let mut ans = 0
  let mut mx = 0
  let mut last = 0
  for i = 0; i < nums.length() - 1; i = i + 1 {
    mx = @math.maximum(mx, i + nums[i])
    if last == i {
      ans = ans + 1
      last = mx
    }
  }
  ans
}
