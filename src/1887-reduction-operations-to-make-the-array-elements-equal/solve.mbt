///|
fn reduction_operations(nums : Array[Int]) -> Int {
  // Sort the array
  nums.sort()
  let n = nums.length()
  let mut operations = 0
  let mut current_count = 0

  // Iterate through the sorted array
  for i = 0; i < n; i = i + 1 {
    if i > 0 && nums[i] != nums[i - 1] {
      current_count = current_count + 1
    }
    operations = operations + current_count
  }
  return operations
}

// Test cases
