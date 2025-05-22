test "example 1" {
  let preorder = [8, 5, 1, 7, 10, 12]
  let expected_vals = [8, 5, 1, 7, 10, 12] // Corrected expected values to match the preorder traversal
  let result_tree = bst_from_preorder(preorder)
  let result_vals = collect_vals(result_tree).to_array()
  assert_eq!(result_vals, expected_vals)
}
