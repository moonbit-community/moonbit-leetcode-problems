test "example 1" {
  let chalk = [5, 1, 5]
  let k = 22
  assert_eq!(find_student_to_replace_chalk(chalk, k), 0)
}

test "example 2" {
  let chalk = [3, 4, 1, 2]
  let k = 25
  assert_eq!(find_student_to_replace_chalk(chalk, k), 1)
}

test "additional example 1" {
  let chalk = [1, 2, 3]
  let k = 10
  assert_eq!(find_student_to_replace_chalk(chalk, k), 2)
}

test "additional example 2" {
  let chalk = [10, 20, 30]
  let k = 100
  assert_eq!(find_student_to_replace_chalk(chalk, k), 1)
}
