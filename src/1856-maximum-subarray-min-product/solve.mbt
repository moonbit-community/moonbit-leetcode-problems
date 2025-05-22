///|
fn max_subarray_min_product(nums : Array[Int]) -> Int {
  let mod_value = 1000000007
  let n = nums.length()
  let left = Array::make(n, -1)
  let right = Array::make(n, n)
  let stack = Array::new()

  // Fill left array
  for i = 0; i < n; i = i + 1 {
    while not(stack.is_empty()) &&
          nums[stack.get(stack.length() - 1).or(0)] >= nums[i] {
      stack.pop() |> ignore
    }
    if not(stack.is_empty()) {
      left[i] = stack.get(stack.length() - 1).or(0)
    }
    stack.push(i)
  }
  stack.clear()

  // Fill right array
  for i = n - 1; i >= 0; i = i - 1 {
    while not(stack.is_empty()) &&
          nums[stack.get(stack.length() - 1).or(0)] >= nums[i] {
      stack.pop() |> ignore
    }
    if not(stack.is_empty()) {
      right[i] = stack.get(stack.length() - 1).or(0)
    }
    stack.push(i)
  }
  let prefix_sum = Array::make(n + 1, 0)
  for i = 0; i < n; i = i + 1 {
    prefix_sum[i + 1] = (prefix_sum[i] + nums[i]) % mod_value
  }
  let mut max_product = 0
  for i = 0; i < n; i = i + 1 {
    let sum = (prefix_sum[right[i]] - prefix_sum[left[i] + 1] + mod_value) %
      mod_value
    let product = nums[i] * sum % mod_value
    if product > max_product {
      max_product = product
    }
  }
  max_product
}

// Test cases
