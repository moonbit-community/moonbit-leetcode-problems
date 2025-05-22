fn min_number_of_operations_to_move_all_balls_to_each_box(
  boxes : String
) -> Array[Int] {
  let n = boxes.length()
  let answer = Array::make(n, 0)
  let left_cost = Array::make(n, 0)
  let right_cost = Array::make(n, 0)
  let mut left_balls = 0
  let mut right_balls = 0

  // First pass: calculate the cost from left to right
  for i = 1; i < n; i = i + 1 {
    if boxes[i - 1] == '1' {
      left_balls = left_balls + 1
    }
    left_cost[i] = left_cost[i - 1] + left_balls
  }

  // Second pass: calculate the cost from right to left
  for i = n - 2; i >= 0; i = i - 1 {
    if boxes[i + 1] == '1' {
      right_balls = right_balls + 1
    }
    right_cost[i] = right_cost[i + 1] + right_balls
  }

  // Combine the costs from both directions
  for i = 0; i < n; i = i + 1 {
    answer[i] = left_cost[i] + right_cost[i]
  }
  answer
}

// Test cases
