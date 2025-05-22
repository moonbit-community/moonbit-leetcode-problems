///|
fn is_palindrome(x : Int) -> Bool {
  if x < 0 {
    return false
  }
  let original = x
  let mut reversed = 0
  let mut num = x
  while num > 0 {
    let digit = num % 10
    reversed = reversed * 10 + digit
    num = num / 10
  }
  return original == reversed
}
