///|
fn is_sorted(nums : Array[Int]) -> Bool {
  let mut i = 0
  while i < nums.length() - 1 {
    if nums[i] > nums[i + 1] {
      return false
    }
    i = i + 1
  }
  return true
}

///|
fn check_possibility(nums : Array[Int]) -> Bool {
  let mut i = 0
  while i < nums.length() - 1 {
    let a = nums[i]
    let b = nums[i + 1]
    if a > b {
      nums[i] = b // Try lowering a to b
      if is_sorted(nums) {
        return true
      }
      nums[i] = a // Revert the change
      nums[i + 1] = a // Try raising b to a
      return is_sorted(nums)
    }
    i = i + 1
  }
  return true
}
