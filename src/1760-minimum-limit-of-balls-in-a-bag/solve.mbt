fn max_element(nums : Array[Int]) -> Int {
  let mut max_val = nums[0]
  for i = 1; i < nums.length(); i = i + 1 {
    if nums[i] > max_val {
      max_val = nums[i]
    }
  }
  max_val
}

fn min_limit_of_balls_in_bag(nums : Array[Int], max_operations : Int) -> Int {
  let max_num = max_element(nums)
  let mut left = 1
  let mut right = max_num
  while left < right {
    let mid = (left + right) / 2
    if can_achieve_penalty(nums, mid, max_operations) {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}

fn can_achieve_penalty(
  nums : Array[Int],
  penalty : Int,
  max_operations : Int
) -> Bool {
  let mut operations_needed = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let num = nums[i]
    operations_needed += (num - 1) / penalty
  }
  operations_needed <= max_operations
}
