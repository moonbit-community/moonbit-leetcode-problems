///|
fn running_sum(nums : Array[Int]) -> Array[Int] {
  let mut i = 1
  while i < nums.length() {
    nums[i] = nums[i] + nums[i - 1]
    i = i + 1
  }
  nums
}
