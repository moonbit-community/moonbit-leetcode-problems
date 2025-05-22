///|
fn reformat_number(number : String) -> String {
  let chars : Array[Char] = []
  let mut index = 0

  // Filtering out spaces and dashes from the input string
  while index < number.length() {
    let c = number[index]
    if c != ' ' && c != '-' {
      chars.push(c)
    }
    index = index + 1
  }
  let n = chars.length()
  let result : Array[Char] = []
  let mut i = 0

  // Concatenating characters with dashes based on conditions
  while i < n {
    result.push(chars[i])
    if ((i + 1) % 3 == 0 && i < n - 2) || (n % 3 == 1 && n - 3 == i) {
      result.push('-')
    }
    i = i + 1
  }
  let mut res = ""
  for i = 0; i < result.length(); i = i + 1 {
    res = res + result[i].to_string()
  }
  res
}
