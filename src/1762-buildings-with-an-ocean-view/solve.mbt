///|
fn buildings_with_ocean_view(heights : Array[Int]) -> Array[Int] {
  let n = heights.length()
  let result : Array[Int] = []
  let mut max_height = 0
  for i = n - 1; i >= 0; i = i - 1 {
    if heights[i] > max_height {
      result.push(i)
      max_height = heights[i]
    }
  }
  result.rev_inplace()
  result
}
