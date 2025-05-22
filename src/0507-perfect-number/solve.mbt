///|
fn check_perfect_number(num : Int) -> Bool {
  if num == 1 {
    return false
  }
  let mut s = 1
  for i = 2; i * i <= num; i = i + 1 {
    if num % i == 0 {
      s = s + i
      if i != num / i {
        s = s + num / i
      }
    }
  }
  s == num
}
