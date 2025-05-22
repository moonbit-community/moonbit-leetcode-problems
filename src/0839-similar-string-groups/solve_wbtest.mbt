///|
test "example 1" {
  let solution = Solution::{ p: [] }
  assert_eq!(
    Solution::num_similar_groups(solution, ["tars", "rats", "arts", "star"]),
    2,
  )
}

///|
test "example 2" {
  let solution = Solution::{ p: [] }
  assert_eq!(Solution::num_similar_groups(solution, ["omv", "ovm"]), 1)
}
