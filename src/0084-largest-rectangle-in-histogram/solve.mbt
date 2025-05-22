///|
fn largest_rectangle_area(heights : Array[Int]) -> Int {
  let n = heights.length()
  let left = Array::make(n, 0)
  let right = Array::make(n, 0)
  let mono_stack : Array[Int] = Array::new()
  for i = 0; i < n; i = i + 1 {
    while not(mono_stack.is_empty()) &&
          heights[mono_stack[mono_stack.length() - 1]] >= heights[i] {
      mono_stack.pop() |> ignore
    }
    if mono_stack.is_empty() {
      left[i] = -1
    } else {
      left[i] = mono_stack[mono_stack.length() - 1]
    }
    mono_stack.push(i)
  }
  mono_stack.clear()
  for i = n - 1; i >= 0; i = i - 1 {
    while not(mono_stack.is_empty()) &&
          heights[mono_stack[mono_stack.length() - 1]] >= heights[i] {
      mono_stack.pop() |> ignore
    }
    if mono_stack.is_empty() {
      right[i] = n
    } else {
      right[i] = mono_stack[mono_stack.length() - 1]
    }
    mono_stack.push(i)
  }
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    ans = @math.maximum(ans, (right[i] - left[i] - 1) * heights[i])
  }
  ans
}
