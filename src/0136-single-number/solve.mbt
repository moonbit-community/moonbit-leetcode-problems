///|
fn single_number(nums : Array[Int]) -> Int {
  let mut ans = 0
  for i = 0; i < nums.length(); i = i + 1 {
    ans = ans ^ nums[i]
  }
  ans
}
