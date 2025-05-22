///|
fn is_sorted_and_rotated(nums : Array[Int]) -> Bool {
  let n = nums.length()
  let mut pivot = -1

  // Find the pivot point where the order breaks
  for i = 0; i < n - 1; i = i + 1 {
    if nums[i] > nums[i + 1] {
      pivot = i
      break
    }
  }

  // If no pivot is found, the array is already sorted
  if pivot == -1 {
    return true
  }

  // Check if the array is sorted after the pivot
  for i = pivot + 1; i < n - 1; i = i + 1 {
    if nums[i] > nums[i + 1] {
      return false
    }
  }

  // Check if the last element is less than or equal to the first element
  return nums[n - 1] <= nums[0]
}

// Test cases
