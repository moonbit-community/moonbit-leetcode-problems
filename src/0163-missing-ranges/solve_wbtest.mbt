test "example 1" {
  let nums1 : Array[Int] = [0, 1, 3, 50, 75]
  let result1 = find_missing_ranges(nums1, 0, 99)
  assert_eq!(
    result1,
    @immut/list.T::of([Pair(2, 2), Pair(4, 49), Pair(51, 74), Pair(76, 99)]),
  )
}
