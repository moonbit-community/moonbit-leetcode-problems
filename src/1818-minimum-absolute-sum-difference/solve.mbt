fn min_absolute_sum_diff(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let mod_value = 1_000_000_007
  let n = nums1.length()
  let mut original_diff_sum = 0
  for i = 0; i < n; i = i + 1 {
    original_diff_sum = (original_diff_sum + (nums1[i] - nums2[i]).abs()) % mod_value
  }
  let sorted_nums1 = nums1.copy()
  sorted_nums1.sort()
  let mut max_reduction = 0
  for i = 0; i < n; i = i + 1 {
    let current_diff = (nums1[i] - nums2[i]).abs()
    let closest = find_closest(sorted_nums1, nums2[i])
    let potential_diff = (closest - nums2[i]).abs()
    let reduction = current_diff - potential_diff
    if reduction > max_reduction {
      max_reduction = reduction
    }
  }
  (original_diff_sum - max_reduction + mod_value) % mod_value
}

fn find_closest(sorted_nums1 : Array[Int], target : Int) -> Int {
  let n = sorted_nums1.length()
  let mut left = 0
  let mut right = n - 1
  while left < right {
    let mid = (left + right) / 2
    if sorted_nums1[mid] < target {
      left = mid + 1
    } else {
      right = mid
    }
  }
  if left > 0 && (sorted_nums1[left - 1] - target).abs() < (sorted_nums1[left] -
  target).abs() {
    sorted_nums1[left - 1]
  } else {
    sorted_nums1[left]
  }
}
