fn k_length_apart(nums : Array[Int], k : Int) -> Bool {
  let mut j = -(k + 1)
  let n = nums.length()
  for i = 0; i < n; i = i + 1 {
    if nums[i] == 1 {
      if i - j - 1 < k {
        return false
      }
      j = i
    }
  }
  return true
}
