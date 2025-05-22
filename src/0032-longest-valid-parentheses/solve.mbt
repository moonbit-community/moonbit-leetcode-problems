///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn longest_valid_parentheses(s : String) -> Int {
  let mut max_length = 0
  let stack : Array[Int] = Array::new()
  stack.push(-1)
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] == '(' {
      stack.push(i)
    } else {
      stack.pop() |> ignore
      if stack.is_empty() {
        stack.push(i)
      } else {
        max_length = max(max_length, i - stack.get(stack.length() - 1).or(0))
      }
    }
  }
  max_length
}
