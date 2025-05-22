fn three_sum(nums : Array[Int]) -> Array[Array[Int]] {
  let result : Array[Array[Int]] = []
  nums.sort()
  let n = nums.length()
  for i = 0; i < n - 2; i = i + 1 {
    if i > 0 && nums[i] == nums[i - 1] {
      continue
    }
    let target = -nums[i]
    let mut left = i + 1
    let mut right = n - 1
    while left < right {
      let sum = nums[left] + nums[right]
      if sum == target {
        result.push([nums[i], nums[left], nums[right]])
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
  result
}
