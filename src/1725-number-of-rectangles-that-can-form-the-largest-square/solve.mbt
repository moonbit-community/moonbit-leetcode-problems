///|
fn number_of_rectangles_that_can_form_the_largest_square(
  rectangles : Array[Array[Int]]
) -> Int {
  let mut max_len = 0
  let mut count = 0

  // Step 1: Determine the maximum side length of the square that can be formed from each rectangle
  for i = 0; i < rectangles.length(); i = i + 1 {
    let rect = rectangles[i]
    let side_len = @math.minimum(rect[0], rect[1])
    if side_len > max_len {
      max_len = side_len
      count = 1
    } else if side_len == max_len {
      count = count + 1
    }
  }

  // Step 3: Return the count of rectangles that can form a square with the largest side length
  count
}

// Test cases
