///|
fn is_power_of_three(n : Int) -> Bool {
  let mut num = n
  while num > 2 {
    if num % 3 != 0 {
      return false
    }
    num = num / 3
  }
  num == 1
}
