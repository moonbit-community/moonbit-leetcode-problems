test "example" {
  let nums : Array[Int] = [1, 2, 4, 8]
  let expected : @immut/list.T[Int] = @immut/list.T::of([1, 2, 4, 8])
  assert_eq!(largestDivisibleSubset(nums), expected)
}
