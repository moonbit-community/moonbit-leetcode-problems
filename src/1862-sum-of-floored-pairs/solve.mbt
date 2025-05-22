fn sum_of_floored_pairs(nums : Array[Int]) -> Int {
  let mod_value = 1000000007
  let max_num = 100000
  let freq : Array[Int] = Array::make(max_num + 1, 0)

  // Count the frequency of each number in the array
  for i = 0; i < nums.length(); i = i + 1 {
    freq[nums[i]] = freq[nums[i]] + 1
  }

  // Calculate the prefix sum of frequencies
  let prefix_freq : Array[Int] = Array::make(max_num + 1, 0)
  for i = 1; i <= max_num; i = i + 1 {
    prefix_freq[i] = prefix_freq[i - 1] + freq[i]
  }
  let mut result = 0
  for i = 1; i <= max_num; i = i + 1 {
    if freq[i] > 0 {
      let mut j = i
      while j <= max_num {
        let count = prefix_freq[j] - prefix_freq[j - i]
        result = (result + count * (j / i) * freq[i] % mod_value) % mod_value
        j = j + i
      }
    }
  }
  result
}

// Test cases
