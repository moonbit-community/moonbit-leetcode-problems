fn concat[X](this : ArrayView[X], that : ArrayView[X]) -> ArrayView[X] {
  let array = Array::new()
  for i = 0; i < this.length(); i = i + 1 {
    array.push(this[i])
  }
  for i = 0; i < that.length(); i = i + 1 {
    array.push(that[i])
  }
  array[:]
}

fn count_students(
  students : ArrayView[Int],
  sandwiches : ArrayView[Int]
) -> Int {
  let mut student_queue = students
  let mut sandwich_stack = sandwiches
  let mut unable_to_eat = 0
  let mut total_students = student_queue.length()
  while unable_to_eat < total_students {
    if student_queue[0] == sandwich_stack[0] {
      // The student at the front of the queue prefers the top sandwich
      student_queue = student_queue[1:] // Remove the student from the queue
      sandwich_stack = sandwich_stack[1:] // Remove the sandwich from the stack
      total_students -= 1
      unable_to_eat = 0 // Reset the count of students unable to eat
    } else {
      // The student at the front does not prefer the top sandwich
      student_queue = concat(student_queue[1:], [student_queue[0]][:]) // Move the student to the end of the queue
      unable_to_eat += 1
    }
  }
  unable_to_eat
}
