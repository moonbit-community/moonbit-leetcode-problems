fn reverse_integer(x : Int) -> Int {
  let max_int = @int.max_value
  let is_negative = x < 0
  let mut num = if is_negative { -x } else { x }
  let mut reversed = 0
  while num > 0 {
    let digit = num % 10
    num = num / 10

    // Check for overflow
    if reversed > (max_int - digit) / 10 {
      return 0
    }
    reversed = reversed * 10 + digit
  }
  if is_negative {
    -reversed
  } else {
    reversed
  }
}
