// Define a structure to represent the stack
// Function to generate all combinations of well-formed parentheses
///|
fn generate_parentheses(n : Int) -> Array[String] {
  let result = []
  let stack = []
  let open_count = n // Number of remaining open parentheses
  let close_count = n // Number of remaining close parentheses

  // Recursive helper function
  fn backtrack(
    stack : Array[String],
    current : String,
    open_count : Int,
    close_count : Int,
    result : Array[String]
  ) {
    if open_count == 0 && close_count == 0 && stack.is_empty() {
      result.push(current)
      return
    }
    if open_count > 0 {
      stack.push("(")
      backtrack(stack, current + "(", open_count - 1, close_count, result)
      let _ = stack.pop()

    }
    if close_count > 0 && not(stack.is_empty()) {
      stack.pop() |> ignore
      backtrack(stack, current + ")", open_count, close_count - 1, result)
      stack.push("(")
    }
  }

  // Initial call to the helper function

  backtrack(stack, "", open_count, close_count, result)
  result
}

///|
fn[X] clone(array : Array[X]) -> Array[X] {
  let len = array.length()
  if len == 0 {
    []
  } else {
    let result = Array::make(len, array[0])
    for i = 0; i < len; i = i + 1 {
      result[i] = array[i]
    }
    result
  }
}

///|
fn[X : Compare + Eq] sort(array : Array[X]) -> Array[X] {
  let return_array = array |> clone
  return_array.sort()
  return_array
}
