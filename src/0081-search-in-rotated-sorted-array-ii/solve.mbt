///|
fn search(nums : Array[Int], target : Int) -> Bool {
  let n = nums.length()
  if n == 0 {
    return false
  }
  if n == 1 {
    return nums[0] == target
  }
  let mut l = 0
  let mut r = n - 1
  while l <= r {
    let mid = (l + r) / 2
    if nums[mid] == target {
      return true
    }
    if nums[l] == nums[mid] && nums[mid] == nums[r] {
      l += 1
      r -= 1
    } else if nums[l] <= nums[mid] {
      if nums[l] <= target && target < nums[mid] {
        r = mid - 1
      } else {
        l = mid + 1
      }
    } else if nums[mid] > target && target <= nums[n - 1] {
      l = mid + 1
    } else {
      r = mid - 1
    }
  }
  false
}
