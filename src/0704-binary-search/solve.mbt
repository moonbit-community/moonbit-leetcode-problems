fn search(nums : Array[Int], target : Int) -> Int {
  let mut left : Int = 0
  let mut right : Int = nums.length() - 1
  while left < right {
    let mid : Int = (left + right) / 2
    if nums[mid] >= target {
      right = mid
    } else {
      left = left + 1
    }
  }
  if nums[left] == target {
    left
  } else {
    -1
  }
}
