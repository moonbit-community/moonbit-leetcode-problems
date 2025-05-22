fn sorted_squares(nums : Array[Int]) -> Array[Int] {
  let n : Int = nums.length()
  let res : Array[Int] = Array::make(n, 0)
  let mut i : Int = 0
  let mut j : Int = n - 1
  let mut k : Int = n - 1
  while i <= j {
    if nums[i] * nums[i] > nums[j] * nums[j] {
      res[k] = nums[i] * nums[i]
      k = k - 1
      i = i + 1
    } else {
      res[k] = nums[j] * nums[j]
      k = k - 1
      j = j - 1
    }
  }
  res
}
