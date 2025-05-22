///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

///|
fn min_swap(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let mut a = 0
  let mut b = 1
  let mut i = 1
  while i < nums1.length() {
    let x = a
    let y = b
    if nums1[i - 1] >= nums1[i] || nums2[i - 1] >= nums2[i] {
      a = y
      b = x + 1
    } else {
      b = y + 1
      if nums1[i - 1] < nums2[i] && nums2[i - 1] < nums1[i] {
        a = min(a, y)
        b = min(b, x + 1)
      }
    }
    i = i + 1
  }
  min(a, b)
}
