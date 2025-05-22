///|
fn is_strictly_increasing(nums : Array[Int]) -> Bool {
  for i = 1; i < nums.length(); i = i + 1 {
    if nums[i] <= nums[i - 1] {
      return false
    }
  }
  true
}

///|
fn can_be_made_strictly_increasing(nums : Array[Int]) -> Bool {
  let n = nums.length()
  for i = 0; i < n; i = i + 1 {
    let new_nums = Array::make(n - 1, 0)
    let mut index = 0
    for j = 0; j < n; j = j + 1 {
      if j != i {
        new_nums[index] = nums[j]
        index = index + 1
      }
    }
    if is_strictly_increasing(new_nums) {
      return true
    }
  }
  false
}

// Test cases
