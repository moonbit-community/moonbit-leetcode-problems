fn divide(dividend : Int, divisor : Int) -> Int {
  let is_negative = (dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0)
  let dividend_abs = dividend.abs()
  let divisor_abs = divisor.abs()
  let mut quotient = 0
  let mut temp = 0
  while dividend_abs - temp >= divisor_abs {
    temp = temp + divisor_abs
    quotient = quotient + 1
  }
  if is_negative {
    -quotient
  } else {
    quotient
  }
}
