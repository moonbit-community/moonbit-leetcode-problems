test "example 1" {
  let nums = [1, 0, -1, 0, -2, 2]
  let target = 0
  let expected = [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]]
  let result = four_sum(nums, target)
  assert_eq!(result.length(), expected.length())
  for i = 0; i < result.length(); i = i + 1 {
    @test.is_true!(result.contains(expected[i]))
  }
}

test "example 2" {
  let nums = [2, 2, 2, 2, 2]
  let target = 8
  let expected = [[2, 2, 2, 2]]
  let result = four_sum(nums, target)
  assert_eq!(result.length(), expected.length())
  for i = 0; i < result.length(); i = i + 1 {
    @test.is_true!(result.contains(expected[i]))
  }
}
