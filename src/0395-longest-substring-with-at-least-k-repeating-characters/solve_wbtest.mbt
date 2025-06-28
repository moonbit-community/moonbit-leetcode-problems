///|
test "example 1" {
  let solution = Solution::{ s: "aaabb", k: 3 }
  assert_eq(solution.longestSubstring(), 3)
}

///|
test "example 2" {
  let solution = Solution::{ s: "ababbc", k: 2 }
  assert_eq(solution.longestSubstring(), 5)
}
