///|
fn is_digit(c : Char) -> Bool {
  c >= '0' && c <= '9'
}

///|
fn char_to_digit(c : Char) -> Int {
  c.to_int() - '0'.to_int()
}

///|
fn second_largest_digit_in_string(s : String) -> Int {
  let mut largest_digit = -1
  let mut second_largest_digit = -1
  for i = 0; i < s.length(); i = i + 1 {
    let char = s[i]
    if is_digit(char) {
      let digit = char_to_digit(char)
      if digit > largest_digit {
        second_largest_digit = largest_digit
        largest_digit = digit
      } else if digit < largest_digit && digit > second_largest_digit {
        second_largest_digit = digit
      }
    }
  }
  second_largest_digit
}
