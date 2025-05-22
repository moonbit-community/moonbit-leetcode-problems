///|
fn find_min(nums : Array[Int]) -> Int {
  let n = nums.length()
  if nums[0] <= nums[n - 1] {
    return nums[0]
  }
  let mut left = 0
  let mut right = n - 1
  while left < right {
    let mid = (left + right) / 2
    if nums[0] <= nums[mid] {
      left = mid + 1
    } else {
      right = mid
    }
  }
  nums[left]
}
