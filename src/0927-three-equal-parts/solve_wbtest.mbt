test "example 1" {
  let sol = Solution::{ arr: [1, 0, 1, 0, 1, 0] }
  assert_eq!(Solution::three_equal_parts(sol), [1, 4])
}

test "example 2" {
  let sol = Solution::{ arr: [1, 1, 1, 0, 0, 0] }
  assert_eq!(Solution::three_equal_parts(sol), [-1, -1])
}

test "example 3" {
  let sol = Solution::{ arr: [1, 1, 0, 1, 1] }
  assert_eq!(Solution::three_equal_parts(sol), [-1, -1])
}
