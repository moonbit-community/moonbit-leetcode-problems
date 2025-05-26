///|
pub fn convert_to_title(column_number : Int) -> String {
  let chars = []
  let mut number = column_number
  while number != 0 {
    let temp_number = number - 1
    let char_code = 65 + temp_number % 26
    // Adjusting the conversion process according to MoonBit's guidelines
    chars.push(char_code.unsafe_to_char())
    number = temp_number / 26
  }
  String::from_iter(chars.rev_iter())
}
