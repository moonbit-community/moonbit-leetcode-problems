///|
fn number_of_steps(num : Int) -> Int {
  let mut num = num
  let mut ans = 0
  while num != 0 {
    num = if (num & 1) == 1 { num - 1 } else { num >> 1 }
    ans = ans + 1
  }
  ans
}
