fn max_binary_string(binary : String) -> String {
  let n = binary.length()
  let mut first_zero = -1
  let mut zero_count = 0

  // Find the index of the first '0' and count all '0's
  for i = 0; i < n; i = i + 1 {
    if binary[i] == '0' {
      zero_count += 1
      if first_zero == -1 {
        first_zero = i
      }
    }
  }

  // If there are no '0's, the original string is the maximum
  if zero_count == 0 {
    return binary
  }

  // Construct the maximum binary string
  let result = Array::make(n, '\x00')
  for i = 0; i < n; i = i + 1 {
    if i == n - zero_count {
      result[i] = '0'
    } else {
      result[i] = '1'
    }
  }
  return result.to_string()
}
