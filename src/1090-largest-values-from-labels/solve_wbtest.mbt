///|
test "example 1" {
  let values = [5, 4, 3, 2, 1]
  let labels = [1, 1, 2, 2, 3]
  let num_wanted = 3
  let use_limit = 1
  assert_eq!(largest_vals_from_labels(values, labels, num_wanted, use_limit), 9)
}

///|
test "example 2" {
  let values = [5, 4, 3, 2, 1]
  let labels = [1, 3, 3, 3, 2]
  let num_wanted = 3
  let use_limit = 2
  assert_eq!(
    largest_vals_from_labels(values, labels, num_wanted, use_limit),
    12,
  )
}
