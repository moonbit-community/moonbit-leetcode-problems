///|
fn longest_ones(nums : Array[Int], k : Int) -> Int {
  let mut k = k
  let n = nums.length()
  let mut l = 0
  for i = 0; i < n; i = i + 1 {
    if nums[i] == 0 {
      k = k - 1
    }
    if k < 0 {
      if nums[l] == 0 {
        k = k + 1
      }
      l = l + 1
    }
  }
  n - l
}
