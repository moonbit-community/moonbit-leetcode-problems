///|
fn four_sum(nums : Array[Int], target : Int) -> Array[Array[Int]] {
  let result : Array[Array[Int]] = []
  let n = nums.length()
  if n < 4 {
    return result
  }
  nums.sort()
  for i = 0; i < n - 3; i = i + 1 {
    if i > 0 && nums[i] == nums[i - 1] {
      continue
    }
    for j = i + 1; j < n - 2; j = j + 1 {
      if j > i + 1 && nums[j] == nums[j - 1] {
        continue
      }
      let mut left = j + 1
      let mut right = n - 1
      while left < right {
        let sum = nums[i] + nums[j] + nums[left] + nums[right]
        if sum == target {
          result.push([nums[i], nums[j], nums[left], nums[right]])
          left = left + 1
          right = right - 1
          while left < right && nums[left] == nums[left - 1] {
            left = left + 1
          }
          while left < right && nums[right] == nums[right + 1] {
            right = right - 1
          }
        } else if sum < target {
          left = left + 1
        } else {
          right = right - 1
        }
      }
    }
  }
  result
}
