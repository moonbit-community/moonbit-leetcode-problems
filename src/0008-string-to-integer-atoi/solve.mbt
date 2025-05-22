fn my_atoi(s : String) -> Int {
  let length = s.length()
  let mut index = 0
  let mut sign = 1
  let mut result = 0

  // Step 1: Ignore leading whitespace
  while index < length && s[index] == ' ' {
    index = index + 1
  }

  // Step 2: Check for sign
  if index < length && (s[index] == '-' || s[index] == '+') {
    if s[index] == '-' {
      sign = -1
    }
    index = index + 1
  }

  // Step 3: Read digits until non-digit character
  while index < length && (s[index] |> is_digit()) {
    let digit = s[index] |> to_digit()
    // Check for overflow
    if result > (2147483647 - digit) / 10 {
      return if sign == 1 { 2147483647 } else { -2147483648 }
    }
    result = result * 10 + digit
    index = index + 1
  }

  // Step 4: Apply sign
  result * sign
}

// Helper function to check if a character is a digit
fn is_digit(c : Char) -> Bool {
  c >= '0' && c <= '9'
}

// Helper function to convert a character to a digit
fn to_digit(c : Char) -> Int {
  c.to_int() - '0'.to_int()
}

// Test cases
