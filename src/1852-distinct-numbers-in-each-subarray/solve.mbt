fn distinct_numbers_in_each_subarray(nums : Array[Int], k : Int) -> Array[Int] {
  let n = nums.length()
  let ans = Array::make(n - k + 1, 0)
  let freq_map = @hashmap.new()
  let mut distinct_count = 0

  // Initialize the first window
  for i = 0; i < k; i = i + 1 {
    let count = freq_map.get_or_default(nums[i], 0)
    if count == 0 {
      distinct_count = distinct_count + 1
    }
    freq_map.set(nums[i], count + 1)
  }
  ans[0] = distinct_count

  // Slide the window
  for i = k; i < n; i = i + 1 {
    // Remove the element going out of the window
    let out_elem = nums[i - k]
    let out_count = freq_map.get_or_default(out_elem, 0)
    if out_count == 1 {
      distinct_count = distinct_count - 1
    }
    freq_map.set(out_elem, out_count - 1)

    // Add the new element coming into the window
    let in_elem = nums[i]
    let in_count = freq_map.get_or_default(in_elem, 0)
    if in_count == 0 {
      distinct_count = distinct_count + 1
    }
    freq_map.set(in_elem, in_count + 1)

    // Update the result array
    ans[i - k + 1] = distinct_count
  }
  ans
}

// Test cases
