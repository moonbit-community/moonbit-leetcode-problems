fn search_range(nums : Array[Int], target : Int) -> (Int, Int) {
  let n = nums.length()
  let mut left = 0
  let mut right = n - 1
  let mut start = -1
  let mut end = -1

  // Binary search to find the leftmost position of the target
  while left <= right {
    let mid = (left + right) / 2
    if nums[mid] >= target {
      right = mid - 1
    } else {
      left = mid + 1
    }
    if nums[mid] == target {
      start = mid
    }
  }

  // Binary search to find the rightmost position of the target
  left = 0
  right = n - 1
  while left <= right {
    let mid = (left + right) / 2
    if nums[mid] <= target {
      left = mid + 1
    } else {
      right = mid - 1
    }
    if nums[mid] == target {
      end = mid
    }
  }
  (start, end)
}
