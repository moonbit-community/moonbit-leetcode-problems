///|
fn max_area(height : Array[Int]) -> Int {
  let mut left = 0
  let mut right = height.length() - 1
  let mut max_area = 0
  while left < right {
    let current_area = @math.minimum(height[left], height[right]) *
      (right - left)
    if current_area > max_area {
      max_area = current_area
    }
    if height[left] < height[right] {
      left = left + 1
    } else {
      right = right - 1
    }
  }
  max_area
}
