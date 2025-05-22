fn tuple_with_same_product(nums : Array[Int]) -> Int {
  let product_map : @hashmap.T[Int, Int] = @hashmap.new()
  let n = nums.length()

  // Step 1: Calculate all possible products
  for i = 0; i < n; i = i + 1 {
    for j = i + 1; j < n; j = j + 1 {
      let product = nums[i] * nums[j]
      product_map.set(product, product_map.get_or_default(product, 0) + 1)
    }
  }

  // Step 2: Count valid tuples
  let mut result = 0
  product_map.each(
    fn(product, count) {
      if count > 1 {
        // For each product, if there are 'count' pairs, we can form 'count * (count - 1) * 4' tuples
        // because we can permute the pairs and the elements within each pair.
        result = result + count * (count - 1) * 4
      }
    },
  )
  result
}

// Test cases
