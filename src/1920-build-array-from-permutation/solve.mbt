fn build_array_from_permutation(nums : Array[Int]) -> Array[Int] {
  let n = nums.length()
  let ans = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    ans[i] = nums[nums[i]]
  }
  ans
}

// Test cases
