///|
fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}

///|
fn min_elements_to_add(nums : Array[Int], limit : Int, goal : Int) -> Int {
  let mut current_sum = 0
  for i = 0; i < nums.length(); i = i + 1 {
    current_sum = current_sum + nums[i]
  }
  let difference = goal - current_sum
  let abs_difference = abs(difference)
  let elements_needed = (abs_difference + limit - 1) / limit
  elements_needed
}
