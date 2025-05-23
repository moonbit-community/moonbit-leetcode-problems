///|
fn find_min(nums : Array[Int]) -> Int {
  let mut left = 0
  let mut right = nums.length() - 1
  while left < right {
    let mid = (left + right) >> 1
    if nums[mid] > nums[right] {
      left = mid + 1
    } else if nums[mid] < nums[right] {
      right = mid
    } else {
      right = right - 1
    }
  }
  nums[left]
}
