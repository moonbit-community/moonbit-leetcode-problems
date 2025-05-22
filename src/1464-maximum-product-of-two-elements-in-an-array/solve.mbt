///|
fn max_product(nums : Array[Int]) -> Int {
  let n = nums.length()
  for i = 0; i < 2; i = i + 1 {
    let mut max_idx = i
    for j = i + 1; j < n; j = j + 1 {
      if nums[j] > nums[max_idx] {
        max_idx = j
      }
    }
    let temp = nums[i]
    nums[i] = nums[max_idx]
    nums[max_idx] = temp
  }
  (nums[0] - 1) * (nums[1] - 1)
}
