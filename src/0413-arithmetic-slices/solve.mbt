///|
fn number_of_arithmetic_slices(nums : Array[Int]) -> Int {
  let mut ans : Int = 0
  let mut cnt : Int = 0
  let mut d : Int = 3000
  let mut i : Int = 0
  while i < nums.length() - 1 {
    if nums[i + 1] - nums[i] == d {
      cnt = cnt + 1
    } else {
      d = nums[i + 1] - nums[i]
      cnt = 0
    }
    ans = ans + cnt
    i = i + 1
  }
  ans
}
