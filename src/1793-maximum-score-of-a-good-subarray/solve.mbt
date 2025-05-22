fn max_score_of_good_subarray(nums : Array[Int], k : Int) -> Int {
  let n = nums.length()
  let mut left = k
  let mut right = k
  let mut min_val = nums[k]
  let mut max_score = min_val
  while left > 0 || right < n - 1 {
    if left == 0 || (right < n - 1 && nums[right + 1] > nums[left - 1]) {
      right += 1
    } else {
      left -= 1
    }
    min_val = @math.minimum(min_val, @math.minimum(nums[left], nums[right]))
    let score = min_val * (right - left + 1)
    max_score = @math.maximum(max_score, score)
  }
  max_score
}
