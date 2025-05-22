///|
fn three_sum_closest(nums : Array[Int], target : Int) -> Int {
  // Sort the array
  nums.sort()
  let n = nums.length()
  let mut closest_sum = nums[0] + nums[1] + nums[2]
  let mut min_diff = (closest_sum - target).abs()
  for i = 0; i < n - 2; i = i + 1 {
    let mut left = i + 1
    let mut right = n - 1
    while left < right {
      let current_sum = nums[i] + nums[left] + nums[right]
      let current_diff = (current_sum - target).abs()
      if current_diff < min_diff {
        min_diff = current_diff
        closest_sum = current_sum
      }
      if current_sum < target {
        left = left + 1
      } else if current_sum > target {
        right = right - 1
      } else {
        // If the sum is exactly equal to the target, we can return immediately
        return current_sum
      }
    }
  }
  closest_sum
}

// Test cases
