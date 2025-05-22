///|
fn convert(s : String, num_rows : Int) -> String {
  if num_rows == 1 {
    return s
  }
  let rows : Array[String] = Array::make(num_rows, "")
  let mut current_row = 0
  let mut going_down = false
  for i = 0; i < s.length(); i = i + 1 {
    rows[current_row] = rows[current_row] + s[i].to_string()
    if current_row == 0 || current_row == num_rows - 1 {
      going_down = not(going_down)
    }
    if going_down {
      current_row = current_row + 1
    } else {
      current_row = current_row - 1
    }
  }
  let mut result = ""
  for i = 0; i < num_rows; i = i + 1 {
    result = result + rows[i]
  }
  result
}
