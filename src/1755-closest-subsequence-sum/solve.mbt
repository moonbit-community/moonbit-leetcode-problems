///|
fn closest_subsequence_sum(nums : Array[Int], goal : Int) -> Int {
  let n = nums.length()
  let half = n / 2

  // Generate all possible sums for the first half
  let first_half_sums = generate_sums(nums, 0, half)
  // Generate all possible sums for the second half
  let second_half_sums = generate_sums(nums, half, n)

  // Sort the second half sums for binary search
  second_half_sums.sort()
  let mut min_diff = 2_000_000_000 // A large number

  // Find the closest sum by combining results from both halves
  for i = 0; i < first_half_sums.length(); i = i + 1 {
    let sum1 = first_half_sums[i]
    let target = goal - sum1

    // Binary search to find the closest sum in the second half
    let closest_sum2 = find_closest(second_half_sums, target)
    let current_diff = (sum1 + closest_sum2 - goal).abs()
    if current_diff < min_diff {
      min_diff = current_diff
    }
  }
  min_diff
}

///|
fn generate_sums(nums : Array[Int], start : Int, end : Int) -> Array[Int] {
  let n = end - start
  let sums = Array::make((1).lsl(n), 0)
  for mask = 0; mask < (1).lsl(n); mask = mask + 1 {
    let mut sum = 0
    for i = 0; i < n; i = i + 1 {
      if (mask & (1).lsl(i)) != 0 {
        sum = sum + nums[start + i]
      }
    }
    sums[mask] = sum
  }
  sums
}

///|
fn find_closest(sums : Array[Int], target : Int) -> Int {
  let mut left = 0
  let mut right = sums.length() - 1
  let mut closest = sums[0]
  while left <= right {
    let mid = left + (right - left) / 2
    if (sums[mid] - target).abs() < (closest - target).abs() {
      closest = sums[mid]
    }
    if sums[mid] == target {
      return sums[mid]
    } else if sums[mid] < target {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  closest
}

// Test cases
