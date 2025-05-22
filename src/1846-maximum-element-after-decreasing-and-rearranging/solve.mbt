fn max_element_after_decreasing_and_rearranging(arr : Array[Int]) -> Int {
  // Step 1: Sort the array
  arr.sort()

  // Step 2: Ensure the first element is 1
  arr[0] = 1

  // Step 3: Adjust each subsequent element
  for i = 1; i < arr.length(); i = i + 1 {
    arr[i] = @math.minimum(arr[i], arr[i - 1] + 1)
  }

  // The last element will be the maximum possible value after adjustments
  arr[arr.length() - 1]
}

// Test cases
