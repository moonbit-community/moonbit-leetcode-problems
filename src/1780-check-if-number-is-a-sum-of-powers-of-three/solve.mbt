///|
fn is_sum_of_powers_of_three(n : Int) -> Bool {
  let powers_of_three = Array::new()
  let mut power = 1
  while power <= n {
    powers_of_three.push(power)
    power = power * 3
  }
  fn backtrack(powers : Array[Int], start : Int, remaining : Int) -> Bool {
    if remaining == 0 {
      return true
    }
    if remaining < 0 {
      return false
    }
    for i = start; i < powers.length(); i = i + 1 {
      if backtrack(powers, i + 1, remaining - powers[i]) {
        return true
      }
    }
    return false
  }

  backtrack(powers_of_three, 0, n)
}
