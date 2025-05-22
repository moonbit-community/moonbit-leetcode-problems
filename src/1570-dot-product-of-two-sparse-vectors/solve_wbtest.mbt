test "sparse_vector_dot_product_example_1" {
  let nums1 = [1, 0, 0, 2, 3]
  let nums2 = [0, 3, 0, 4, 0]
  let v1 = SparseVector::new(nums1)
  let v2 = SparseVector::new(nums2)
  let ans = SparseVector::dot_product(v1, v2)
  assert_eq!(ans, 8)
}

test "sparse_vector_dot_product_example_2" {
  let nums1 = [0, 1, 0, 0, 0]
  let nums2 = [0, 0, 0, 0, 2]
  let v1 = SparseVector::new(nums1)
  let v2 = SparseVector::new(nums2)
  let ans = SparseVector::dot_product(v1, v2)
  assert_eq!(ans, 0)
}
