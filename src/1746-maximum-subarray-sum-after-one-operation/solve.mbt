///|
fn max_subarray_sum_after_one_operation(nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut max_sum = -2_0000_0000
  for i = 0; i < n; i = i + 1 {
    let original_num = nums[i]
    let squared_num = original_num * original_num
    nums[i] = squared_num
    let mut current_sum = 0
    let mut max_current = -2_0000_0000
    for j = 0; j < n; j = j + 1 {
      current_sum = @math.maximum(nums[j], current_sum + nums[j])
      max_current = @math.maximum(max_current, current_sum)
    }
    max_sum = @math.maximum(max_sum, max_current)
    nums[i] = original_num
  }
  max_sum
}
