fn find_median_sorted_arrays(nums1 : Array[Int], nums2 : Array[Int]) -> Double {
  let total_length = nums1.length() + nums2.length()
  let is_even = total_length % 2 == 0
  let mid = total_length / 2
  let mut i = 0
  let mut j = 0
  let mut prev = 0
  let mut curr = 0
  for k = 0; k <= mid; k = k + 1 {
    prev = curr
    if i < nums1.length() && (j >= nums2.length() || nums1[i] <= nums2[j]) {
      curr = nums1[i]
      i = i + 1
    } else {
      curr = nums2[j]
      j = j + 1
    }
  }
  if is_even {
    (prev.to_double() + curr.to_double()) / 2.0
  } else {
    curr.to_double()
  }
}
