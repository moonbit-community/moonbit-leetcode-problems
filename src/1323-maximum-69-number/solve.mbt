///|
fn maximum_69_number(num : Int) -> Int {
  let num_str = num.to_string()
  let mut replaced = false
  let mut result = 0
  for i = 0; i < num_str.length(); i = i + 1 {
    let ch = num_str[i]
    let digit = if not(replaced) && ch.to_int() == '6'.to_int() {
      replaced = true
      9
    } else {
      ch.to_int() - '0'.to_int()
    }
    result = result * 10 + digit
  }
  result
}
