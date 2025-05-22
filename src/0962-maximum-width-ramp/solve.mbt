///|
fn max_width_ramp(nums : Array[Int]) -> Int {
  let n : Int = nums.length()
  let stk : Array[Int] = Array::new()
  let mut ans : Int = 0
  for i = 0; i < n; i = i + 1 {
    if stk.is_empty() || nums[stk.get(stk.length() - 1).or(0)] > nums[i] {
      stk.push(i)
    }
  }
  for i = n - 1; i >= 0; i = i - 1 {
    while not(stk.is_empty()) &&
          nums[stk.get(stk.length() - 1).or(0)] <= nums[i] {
      ans = @math.maximum(ans, i - stk.pop().or(0))
    }
    if stk.is_empty() {
      break
    }
  }
  ans
}
