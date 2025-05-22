test "example 1" {
  let order = [2, 1, 4, 3]
  assert_eq!(depth_of_bst_given_insertion_order(order), 3)
}

test "example 2" {
  let order = [2, 1, 3, 4]
  assert_eq!(depth_of_bst_given_insertion_order(order), 3)
}

test "example 3" {
  let order = [1, 2, 3, 4]
  assert_eq!(depth_of_bst_given_insertion_order(order), 4)
}
