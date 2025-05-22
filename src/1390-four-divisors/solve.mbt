///|
fn sum_four_divisors(nums : Array[Int]) -> Int {
  fn f(x : Int) -> Int {
    let mut cnt = 2
    let mut s = x + 1
    let mut i = 2
    while i * i <= x {
      if x % i == 0 {
        cnt = cnt + 1
        s = s + i
        if i * i != x {
          cnt = cnt + 1
          s = s + x / i
        }
      }
      i = i + 1
    }
    if cnt == 4 {
      s
    } else {
      0
    }
  }

  let mut ans = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let num = nums[i]
    ans = ans + f(num)
  }
  ans
}
