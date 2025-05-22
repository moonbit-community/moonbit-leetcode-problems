fn find_student_to_replace_chalk(chalk : Array[Int], k : Int) -> Int {
  let n = chalk.length()
  let mut total_chalk_per_cycle = 0
  for i = 0; i < n; i = i + 1 {
    total_chalk_per_cycle = total_chalk_per_cycle + chalk[i]
  }
  let mut remaining_chalk = k % total_chalk_per_cycle
  let mut current_student = 0
  while remaining_chalk >= chalk[current_student] {
    remaining_chalk = remaining_chalk - chalk[current_student]
    current_student = (current_student + 1) % n
  }
  return current_student
}

// Test cases
