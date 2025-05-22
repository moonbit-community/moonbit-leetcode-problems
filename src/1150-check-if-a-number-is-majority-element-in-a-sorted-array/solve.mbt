fn search(nums : Array[Int], x : Int) -> Int {
  let mut left = 0
  let mut right = nums.length()
  while left < right {
    let mid = (left + right) / 2
    if nums[mid] >= x {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}

fn is_majority_element(nums : Array[Int], target : Int) -> Bool {
  let left = search(nums, target)
  let right = search(nums, target + 1)
  right - left > nums.length() / 2
}
