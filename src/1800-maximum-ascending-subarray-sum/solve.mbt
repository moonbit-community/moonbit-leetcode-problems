fn max_ascending_subarray_sum(nums : Array[Int]) -> Int {
  if nums.length() == 0 {
    return 0
  }
  let mut max_sum = nums[0]
  let mut current_sum = nums[0]
  for i = 1; i < nums.length(); i = i + 1 {
    if nums[i] > nums[i - 1] {
      current_sum = current_sum + nums[i]
    } else {
      current_sum = nums[i]
    }
    if current_sum > max_sum {
      max_sum = current_sum
    }
  }
  max_sum
}
