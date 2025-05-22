fn is_valid_parentheses(s : String) -> Bool {
  let stack : Array[Char] = []
  let pairs : @hashmap.T[Char, Char] = @hashmap.new()
  pairs.set('(', ')')
  pairs.set('[', ']')
  pairs.set('{', '}')
  for i = 0; i < s.length(); i = i + 1 {
    let char = s[i]
    if pairs.contains(char) {
      stack.push(char)
    } else {
      if stack.length() == 0 {
        return false
      }
      let top = stack.pop().unwrap()
      if pairs.get_or_default(top, ' ') != char {
        return false
      }
    }
  }
  return stack.length() == 0
}
