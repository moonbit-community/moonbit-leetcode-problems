fn concatenate_array(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let ans = Array::make(2 * n, 0)
  for i = 0; i < n; i = i + 1 {
    ans[i] = nums[i]
    ans[i + n] = nums[i]
  }
  ans
}
