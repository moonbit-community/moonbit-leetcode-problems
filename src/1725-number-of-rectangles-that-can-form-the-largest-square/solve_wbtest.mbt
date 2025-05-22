///|
test "example 1" {
  let rectangles = [[5, 8], [3, 9], [5, 12], [16, 5]]
  assert_eq!(
    number_of_rectangles_that_can_form_the_largest_square(rectangles),
    3,
  )
}

///|
test "example 2" {
  let rectangles = [[2, 3], [3, 7], [4, 3], [3, 7]]
  assert_eq!(
    number_of_rectangles_that_can_form_the_largest_square(rectangles),
    3,
  )
}

///|
test "example 3" {
  let rectangles = [[1, 2], [2, 3], [3, 4], [4, 5]]
  assert_eq!(
    number_of_rectangles_that_can_form_the_largest_square(rectangles),
    1,
  )
}

///|
test "example 4" {
  let rectangles = [[10, 10]]
  assert_eq!(
    number_of_rectangles_that_can_form_the_largest_square(rectangles),
    1,
  )
}

///|
test "example 5" {
  let rectangles = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]
  assert_eq!(
    number_of_rectangles_that_can_form_the_largest_square(rectangles),
    5,
  )
}
