///|
fn merge(
  nums1 : Array[Int],
  nums2 : Array[Int],
  m : Int,
  n : Int
) -> Array[Int] {
  let mut p1 = 0
  let mut p2 = 0
  let sorted = Array::make(m + n, 0)
  let mut cur = 0
  while p1 < m || p2 < n {
    if p1 == m {
      cur = nums2[p2]
      p2 += 1
    } else if p2 == n {
      cur = nums1[p1]
      p1 += 1
    } else if nums1[p1] < nums2[p2] {
      cur = nums1[p1]
      p1 += 1
    } else {
      cur = nums2[p2]
      p2 += 1
    }
    sorted[p1 + p2 - 1] = cur
  }
  sorted
}
