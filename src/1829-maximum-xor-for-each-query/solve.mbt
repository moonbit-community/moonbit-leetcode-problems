///|
fn maximum_xor_for_each_query(
  nums : Array[Int],
  maximum_bit : Int
) -> Array[Int] {
  let n = nums.length()
  let max_xor = 1 << (maximum_bit - 1)
  let mut xor_sum = 0
  let answer = Array::make(n, 0)

  // Calculate the cumulative XOR of the entire array
  for i = 0; i < n; i = i + 1 {
    xor_sum = xor_sum ^ nums[i]
  }

  // Iterate through the array in reverse order
  for i = n - 1; i >= 0; i = i - 1 {
    // Calculate k such that it maximizes the XOR
    let k = xor_sum ^ max_xor
    answer[i] = k

    // Update the cumulative XOR by removing the last element
    xor_sum = xor_sum ^ nums[i]
  }
  answer
}

// Test cases
