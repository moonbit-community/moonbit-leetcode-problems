test "example_1" {
  let triplets = [[2, 5, 3], [1, 8, 4], [1, 7, 5]]
  let target = [2, 7, 5]
  assert_eq!(can_form_target_triplet(triplets, target), true)
}

test "example_2" {
  let triplets = [[3, 4, 5], [4, 5, 6]]
  let target = [3, 2, 5]
  assert_eq!(can_form_target_triplet(triplets, target), false)
}

test "example_3" {
  let triplets = [[2, 5, 3], [2, 3, 4], [1, 2, 5], [5, 2, 3]]
  let target = [5, 5, 5]
  assert_eq!(can_form_target_triplet(triplets, target), true)
}
