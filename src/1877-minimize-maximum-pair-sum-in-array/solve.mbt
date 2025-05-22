///|
fn minimize_maximum_pair_sum(nums : Array[Int]) -> Int {
  // Step 1: Sort the array
  nums.sort()
  let n = nums.length()
  let mut max_pair_sum = 0

  // Step 2: Pair elements and calculate the maximum pair sum
  for i = 0; i < n / 2; i = i + 1 {
    let pair_sum = nums[i] + nums[n - 1 - i]
    if pair_sum > max_pair_sum {
      max_pair_sum = pair_sum
    }
  }
  max_pair_sum
}

// Test cases
