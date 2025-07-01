///|
fn get_sum_absolute_differences(nums : Array[Int]) -> Array[Int] {
  let s = nums.fold_left(init=0, (a, b) => a + b)
  let n = nums.length()
  let ans : Array[Int] = Array::make(n, 0)
  let mut t = 0
  for i in 0..<n {
    let v = nums[i] * i - t + s - t - nums[i] * (n - i)
    ans[i] = v
    t = t + nums[i]
  }
  ans
}
