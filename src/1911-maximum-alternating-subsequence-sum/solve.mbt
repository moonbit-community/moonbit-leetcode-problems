///|
fn max_alternating_subsequence_sum(nums : Array[Int]) -> Int {
  let mut even_sum = 0
  let mut odd_sum = @int.min_value
  for i = 0; i < nums.length(); i = i + 1 {
    let new_even_sum = @math.maximum(even_sum, odd_sum + nums[i])
    let new_odd_sum = @math.maximum(odd_sum, even_sum - nums[i])
    even_sum = new_even_sum
    odd_sum = new_odd_sum
  }
  @math.maximum(even_sum, odd_sum)
}

// Test cases
