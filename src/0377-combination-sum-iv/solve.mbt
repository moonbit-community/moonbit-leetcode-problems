///|
fn combination_sum4(nums : Array[Int], target : Int) -> Int {
  let ans : Array[Int] = Array::make(target + 1, 0)
  ans[0] = 1
  for i = 0; i <= target; i = i + 1 {
    for j = 0; j < nums.length(); j = j + 1 {
      if i >= nums[j] {
        ans[i] = ans[i] + ans[i - nums[j]]
      }
    }
  }
  ans[target]
}
