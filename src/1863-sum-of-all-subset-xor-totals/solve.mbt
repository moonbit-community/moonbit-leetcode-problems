fn sum_of_all_subset_xor_totals(nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut total_sum = 0

  // Iterate over all possible subsets using a bitmask
  for mask = 0; mask < (1).lsl(n); mask = mask + 1 {
    let mut xor_total = 0
    for i = 0; i < n; i = i + 1 {
      if mask.land((1).lsl(i)) != 0 {
        xor_total = xor_total.lxor(nums[i])
      }
    }
    total_sum = total_sum + xor_total
  }
  total_sum
}

// Test cases
