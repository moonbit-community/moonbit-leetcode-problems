///|
fn find_length(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let m = nums1.length()
  let n = nums2.length()
  let f : Array[Array[Int]] = Array::make(m + 1, Array::make(n + 1, 0))
  let mut ans = 0
  let mut i = 1
  while i <= m {
    let mut j = 1
    while j <= n {
      if nums1[i - 1] == nums2[j - 1] {
        f[i][j] = f[i - 1][j - 1] + 1
        ans = if f[i][j] > ans { f[i][j] } else { ans }
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
