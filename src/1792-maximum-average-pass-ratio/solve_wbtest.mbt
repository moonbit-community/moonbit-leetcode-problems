///|
test "example 1" {
  let classes : Array[Class] = [
    new_class(1, 2),
    new_class(3, 5),
    new_class(2, 2),
  ]
  let extra_students = 2
  let result = max_average_pass_ratio(classes, extra_students)
  assert_approx_eq(result, 0.78333, 0.00001)
}

///|
test "example 2" {
  let classes : Array[Class] = [
    new_class(2, 4),
    new_class(3, 9),
    new_class(4, 5),
    new_class(2, 10),
  ]
  let extra_students = 4
  let result = max_average_pass_ratio(classes, extra_students)
  assert_approx_eq(result, 0.53485, 0.00001)
}
