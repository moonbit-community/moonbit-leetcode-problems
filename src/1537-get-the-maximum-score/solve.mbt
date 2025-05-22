fn max(f : Int, g : Int) -> Int {
  if f > g {
    f
  } else {
    g
  }
}

fn max_sum(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let mod = 1000000007
  let m = nums1.length()
  let n = nums2.length()
  let mut f = 0
  let mut g = 0
  let mut i = 0
  let mut j = 0
  while i < m || j < n {
    if i == m {
      g = g + nums2[j]
      j = j + 1
    } else if j == n {
      f = f + nums1[i]
      i = i + 1
    } else if nums1[i] < nums2[j] {
      f = f + nums1[i]
      i = i + 1
    } else if nums1[i] > nums2[j] {
      g = g + nums2[j]
      j = j + 1
    } else {
      let max_f_g = max(f, g)
      f = max_f_g + nums1[i]
      g = max_f_g + nums1[i]
      i = i + 1
      j = j + 1
    }
  }
  max(f, g) % mod
}
