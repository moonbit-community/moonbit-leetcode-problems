///|
test "optimal division example 1" {
  let nums1 : Array[Int] = [1000]
  assert_eq(optimal_division(nums1), "1000")
}

///|
test "optimal division example 2" {
  let nums2 : Array[Int] = [1000, 100]
  assert_eq(optimal_division(nums2), "1000/100")
}

///|
test "optimal division example 3" {
  let nums3 : Array[Int] = [1000, 100, 10, 2]
  assert_eq(optimal_division(nums3), "1000/(100/10/2)")
}
