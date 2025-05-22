///|
fn min_swaps(nums : Array[Int], k : Int) -> Int {
  // Step 1: Find positions of all 1s in the array
  let positions = Array::new()
  for i = 0; i < nums.length(); i = i + 1 {
    if nums[i] == 1 {
      positions.push(i)
    }
  }

  // Step 2: Early return if k is 0 or positions length is less than k
  if k == 0 || positions.length() < k {
    return 0
  }

  // Step 3: Initialize variables for sliding window calculation
  let n = positions.length()
  let mut min_swaps = @int.max_value
  let mut window_sum = 0

  // Calculate initial window sum for the first window
  for i = 0; i < k; i = i + 1 {
    window_sum += positions[i]
  }

  // Calculate the swaps required for the first window
  min_swaps = window_sum - k * (k - 1) / 2

  // Step 4: Slide the window and update the minimum swaps
  for i = k; i < n; i = i + 1 {
    window_sum += positions[i] - positions[i - k]
    let swaps = window_sum - k * (k - 1) / 2
    if swaps < min_swaps {
      min_swaps = swaps
    }
  }
  return min_swaps
}
