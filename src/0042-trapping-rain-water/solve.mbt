fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn trap(height : Array[Int]) -> Int {
  let mut ans = 0
  let stack : Array[Int] = Array::new()
  let n = height.length()
  for i = 0; i < n; i = i + 1 {
    while not(stack.is_empty()) && height[i] > height[stack[stack.length() - 1]] {
      let top = stack.pop_exn()
      if stack.is_empty() {
        break
      }
      let distance = i - stack[stack.length() - 1] - 1
      let bounded_height = min(height[i], height[stack[stack.length() - 1]]) - height[top]
      ans = ans + distance * bounded_height
    }
    stack.push(i)
  }
  ans
}
