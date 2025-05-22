///|
fn convert_to_title(column_number : Int) -> String {
  let mut res = ""
  let mut number = column_number
  while number != 0 {
    let temp_number = number - 1
    let char_code = 65 + temp_number % 26
    // Adjusting the conversion process according to MoonBit's guidelines
    res = char_code.to_string() + res
    number = temp_number / 26
  }
  res
}
