///|
fn to_binary_string(n : Int) -> String {
  match n {
    0 => "0"
    1 => "1"
    _ => to_binary_string(n / 2) + to_binary_string(n % 2)
  }
}

///|
fn encode(num : Int) -> String {
  let num = num + 1
  let binary_str = to_binary_string(num)
  binary_str
}
