///|
fn minimize_product_sum(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  // Sort nums1 in ascending order
  nums1.sort()

  // Sort nums2 in descending order
  nums2.sort_by(fn(a, b) { b - a })

  // Compute the product sum
  let mut product_sum = 0
  for i = 0; i < nums1.length(); i = i + 1 {
    product_sum = product_sum + nums1[i] * nums2[i]
  }
  product_sum
}

// Test cases
