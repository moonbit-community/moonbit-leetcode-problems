///|
fn interpret(command : String) -> String {
  let n = command.length()
  let ans : Array[String] = Array::new()
  let mut i = 0
  while i < n {
    let c = command[i]
    match c {
      'G' => ans.push("G")
      '(' =>
        if command[i + 1] == ')' {
          ans.push("o")
          i = i + 1
        } else {
          ans.push("al")
          i = i + 3
        }
      _ => ()
    }
    i = i + 1
  }
  let mut result = ""
  ans.each(fn(x) { result = result + x })
  result
}
