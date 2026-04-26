///|
fn min_add_to_make_valid(s : String) -> Int {
  let stack : Array[Char] = Array::new()
  let mut index = 0
  while index < s.length() {
    let c = s.code_unit_at(index).unsafe_to_char()
    if c == ')' && stack.is_empty() == false && stack[stack.length() - 1] == '(' {
      stack.pop() |> ignore
    } else {
      stack.push(c)
    }
    index = index + 1
  }
  stack.length()
}
