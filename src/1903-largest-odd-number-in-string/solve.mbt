///|
fn largest_odd_number(num : String) -> String {
  let n = num.length()
  for i = n - 1; i >= 0; i = i - 1 {
    let digit = num[i].to_int() - '0'.to_int()
    if digit % 2 != 0 {
      return num.substring(start=0, end=i + 1)
    }
  }
  return ""
}

// Test cases
