fn count_pairs_in_two_arrays(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let n = nums1.length()
  let diff = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    diff[i] = nums1[i] - nums2[i]
  }
  diff.sort()
  let mut count = 0
  let mut left = 0
  let mut right = n - 1
  while left < right {
    if diff[left] + diff[right] > 0 {
      count = count + (right - left)
      right = right - 1
    } else {
      left = left + 1
    }
  }
  count
}
