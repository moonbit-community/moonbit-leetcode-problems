///|
test "example test" {
  let sol = Solution::new([2, 1, 3])
  let tree = TreeNode::Node(
    2,
    TreeNode::Node(1, Empty, Empty),
    TreeNode::Node(3, Empty, Empty),
  )
  let expected_result = @immut/list.T::Nil // No flips are needed
  assert_eq(sol.flip_match_voyage(tree), expected_result)
}
