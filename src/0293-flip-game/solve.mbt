fn generate_possible_next_moves(
  current_state : String
) -> @immut/list.T[String] {
  let mut ans : @immut/list.T[String] = @immut/list.T::of([])
  let mut i = 0
  while i < current_state.length() - 1 {
    if current_state[i] == '+' && current_state[i + 1] == '+' {
      let mut new_state = current_state
      new_state = set_char_at(new_state, i, '-')
      new_state = set_char_at(new_state, i + 1, '-')
      ans = Cons(new_state, ans) // Add the modified string to the list
      // No need to reset back to '+' as we cloned the string
    }
    i = i + 1
  }
  ans.rev()
}

// Helper function to set a character at a specific position in a string
fn set_char_at(s : String, index : Int, c : Char) -> String {
  let mut new_string = ""
  for i = 0; i < s.length(); i = i + 1 {
    if i == index {
      new_string = new_string + c.to_string()
    } else {
      new_string = new_string + s[i].to_string()
    }
  }
  new_string
}
