///|
fn intersection(nums1 : Array[Int], nums2 : Array[Int]) -> Array[Int] {
  let s : Array[Bool] = Array::make(1001, false)
  let ans : Array[Int] = []

  // Mark the existence of nums1's elements in s
  let mut i = 0
  while i < nums1.length() {
    s[nums1[i]] = true
    i = i + 1
  }

  // Check intersection and ensure uniques in the result
  let mut j = 0
  while j < nums2.length() {
    if s[nums2[j]] {
      ans.push(nums2[j])
      s[nums2[j]] = false
    }
    j = j + 1
  }
  ans
}

///|
fn assert_eq(result : Array[Int], expect : Array[Int]) -> Unit raise {
  if result.length() != expect.length() {
    fail("Length mismatch")
  }
  let mut i = 0
  while i < result.length() {
    if not(result[i] == expect[i]) {
      fail("Element mismatch at index \{i}")
    }
    i = i + 1
  }
  ()
}
