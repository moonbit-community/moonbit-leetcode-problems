fn pow(base : Int, exponent : Int) -> Int {
  for i = 0, result = 1; i < exponent; i = i + 1, result = result * base {

  } else {
    result
  }
}

fn integer_break(n : Int) -> Int {
  if n < 4 {
    return n - 1
  }
  if n % 3 == 0 {
    return pow(3, n / 3)
  }
  if n % 3 == 1 {
    return pow(3, n / 3 - 1) * 4
  }
  return pow(3, n / 3) * 2
}
