fn search(nums : Array[Int], target : Int) -> Int {
  let n = nums.length()
  let mut left = 0
  let mut right = n - 1
  while left <= right {
    let mid = (left + right) / 2
    let mid_val = nums[mid]
    if mid_val == target {
      return mid
    }
    if nums[left] <= mid_val {
      if nums[left] <= target && target < mid_val {
        right = mid - 1
      } else {
        left = mid + 1
      }
    } else if mid_val < target && target <= nums[right] {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  -1
}
