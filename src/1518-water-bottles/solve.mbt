fn num_water_bottles(num_bottles : Int, num_exchange : Int) -> Int {
  let mut ans = num_bottles
  let mut num_bottles = num_bottles
  while num_bottles >= num_exchange {
    num_bottles = num_bottles - (num_exchange - 1)
    ans = ans + 1
  }
  ans
}
