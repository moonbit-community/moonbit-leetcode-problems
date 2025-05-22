fn integer_replacement(n : Int) -> Int {
  let mut ans : Int = 0
  let mut num : Int = n
  while num != 1 {
    if num.land(1) == 0 {
      num = num / 2
    } else if num != 3 && num.land(3) == 3 {
      num = num + 1
    } else {
      num = num - 1
    }
    ans = ans + 1
  }
  ans
}
