///|
test "example 1" {
  let nums = [1, 2, 3]
  let tree = sorted_arr_to_bst(nums)
  assert_eq(
    tree,
    Tree::Node(Tree::Node(Empty, 1, Empty), 2, Tree::Node(Empty, 3, Empty)),
  )
}
