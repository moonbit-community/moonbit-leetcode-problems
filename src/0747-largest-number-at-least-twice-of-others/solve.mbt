///|
fn dominant_index(nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut k = 0
  let mut i = 0
  while i < n {
    if nums[k] < nums[i] {
      k = i
    }
    i = i + 1
  }
  i = 0
  while i < n {
    if k != i && nums[k] < nums[i] * 2 {
      return -1
    }
    i = i + 1
  }
  k
}
