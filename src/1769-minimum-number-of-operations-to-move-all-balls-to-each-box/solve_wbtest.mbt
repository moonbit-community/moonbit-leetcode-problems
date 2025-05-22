test "example 1" {
  let boxes = "110"
  let expected = [1, 1, 3]
  assert_eq!(
    min_number_of_operations_to_move_all_balls_to_each_box(boxes),
    expected,
  )
}

test "example 2" {
  let boxes = "001011"
  let expected = [11, 8, 5, 4, 3, 4]
  assert_eq!(
    min_number_of_operations_to_move_all_balls_to_each_box(boxes),
    expected,
  )
}

test "all zeros" {
  let boxes = "0000"
  let expected = [0, 0, 0, 0]
  assert_eq!(
    min_number_of_operations_to_move_all_balls_to_each_box(boxes),
    expected,
  )
}

test "all ones" {
  let boxes = "1111"
  let expected = [3, 2, 3, 4]
  assert_eq!(
    min_number_of_operations_to_move_all_balls_to_each_box(boxes),
    expected,
  )
}

test "single ball" {
  let boxes = "01000"
  let expected = [1, 0, 1, 2, 3]
  assert_eq!(
    min_number_of_operations_to_move_all_balls_to_each_box(boxes),
    expected,
  )
}
