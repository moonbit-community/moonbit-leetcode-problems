fn min_operations_to_make_array_increasing(nums : Array[Int]) -> Int {
  let mut operations = 0
  for i = 1; i < nums.length(); i = i + 1 {
    if nums[i] <= nums[i - 1] {
      let increment = nums[i - 1] - nums[i] + 1
      nums[i] = nums[i] + increment
      operations = operations + increment
    }
  }
  operations
}
