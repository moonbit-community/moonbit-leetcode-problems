///|
fn sum_game(num : String) -> Bool {
  let n = num.length()
  let half_n = n / 2
  let mut sum_first_half = 0
  let mut sum_second_half = 0
  let mut question_marks_first_half = 0
  let mut question_marks_second_half = 0
  for i = 0; i < half_n; i = i + 1 {
    if num[i] == '?' {
      question_marks_first_half = question_marks_first_half + 1
    } else {
      sum_first_half = sum_first_half + (num[i].to_int() - '0'.to_int())
    }
  }
  for i = half_n; i < n; i = i + 1 {
    if num[i] == '?' {
      question_marks_second_half = question_marks_second_half + 1
    } else {
      sum_second_half = sum_second_half + (num[i].to_int() - '0'.to_int())
    }
  }
  if question_marks_first_half == question_marks_second_half {
    return sum_first_half != sum_second_half
  } else {
    return true
  }
}

// Test cases
