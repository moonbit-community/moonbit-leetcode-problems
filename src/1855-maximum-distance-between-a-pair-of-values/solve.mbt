///|
fn max_distance(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let mut max_dist = 0
  let n1_len = nums1.length()
  let n2_len = nums2.length()
  for i = 0; i < n1_len; i = i + 1 {
    let mut j = i
    while j < n2_len && nums1[i] <= nums2[j] {
      j = j + 1
    }
    if j > i {
      max_dist = @math.maximum(max_dist, j - i - 1)
    }
  }
  max_dist
}
