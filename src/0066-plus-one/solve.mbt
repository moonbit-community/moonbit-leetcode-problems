fn plus_one(digits : Array[Int]) -> Array[Int] {
  for i = digits.length() - 1; i >= 0; i = i - 1 {
    if digits[i] < 9 {
      digits[i] = digits[i] + 1
      return digits
    }
    digits[i] = 0
  }
  let new_digits = Array::make(digits.length() + 1, 0)
  new_digits[0] = 1
  new_digits
}
