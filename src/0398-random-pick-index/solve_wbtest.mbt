///|
test "example pick" {
  let nums = [1, 2, 3, 3, 3]
  let solution = Solution::new(nums)
  // As the randomness is mocked with deterministic behavior, the test can only test fixed situations.
  // This scenario assumes the simplistic deterministic random pick to showcase the method's logic and is not truly random.
  assert_eq!(solution.pick(3), 2) // In a real random scenario, any index of 3 (2, 3, or 4) could be returned.
}

///|
test "example no match" {
  let nums = [1, 2, 3, 4, 5]
  let solution = Solution::new(nums)
  assert_eq!(solution.pick(6), 0) // As 6 is not in the array, the result should be 0, based on the initial value of ans.
}
