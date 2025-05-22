///|
fn sort_array_by_parity(nums : Array[Int]) -> Array[Int] {
  let mut i = 0
  let mut j = nums.length() - 1
  while i < j {
    if nums[i] % 2 == 0 {
      i = i + 1
    } else if nums[j] % 2 == 1 {
      j = j - 1
    } else {
      // Swap procedure
      let t = nums[i]
      nums[i] = nums[j]
      nums[j] = t
      i = i + 1
      j = j - 1
    }
  }
  nums
}
