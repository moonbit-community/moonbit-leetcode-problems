fn subtract_product_and_sum(n : Int) -> Int {
  let mut x = 1
  let mut y = 0
  let mut n = n
  while n > 0 {
    let v = n % 10
    x = x * v
    y = y + v
    n = floor_div(n, 10)
  }
  x - y
}

// Implement the floor division manually as no direct function is provided
fn floor_div(numerator : Int, denominator : Int) -> Int {
  let is_negative = (numerator < 0 && denominator > 0) || (numerator > 0 && denominator <
    0)
  let numerator_abs = numerator.abs()
  let denominator_abs = denominator.abs()
  let mut quotient = 0
  while numerator_abs - quotient * denominator_abs >= denominator_abs {
    quotient = quotient + 1
  }
  if is_negative {
    -quotient
  } else {
    quotient
  }
}
