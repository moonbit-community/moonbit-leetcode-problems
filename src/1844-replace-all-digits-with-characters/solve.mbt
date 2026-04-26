///|
fn shift(c : Char, x : Int) -> Char {
  let base = 'a'.to_int()
  let shifted_char = (c.to_int() - base + x) % 26 + base
  shifted_char.unsafe_to_char()
}

///|
fn replace_digits_with_characters(s : String) -> String {
  let buffer = @buffer.new(size_hint=s.length() * 4)
  for i = 0; i < s.length(); i = i + 1 {
    if i % 2 == 0 {
      buffer.write_char(s.code_unit_at(i).unsafe_to_char())
    } else {
      buffer.write_char(
        shift(
          s.code_unit_at(i - 1).unsafe_to_char(),
          s.code_unit_at(i).to_int() - '0'.to_int(),
        ),
      )
    }
  }
  buffer.to_string()
}
