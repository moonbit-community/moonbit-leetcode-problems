///|
fn num_subarrays_with_sum(nums : Array[Int], goal : Int) -> Int {
  let cnt : Array[Int] = Array::make(nums.length() + 1, 0)
  cnt[0] = 1
  let mut ans = 0
  let mut s = 0
  let mut i = 0
  while i < nums.length() {
    s = s + nums[i]
    if s - goal >= 0 {
      ans = ans + cnt[s - goal]
    }
    cnt[s] = cnt[s] + 1
    i = i + 1
  }
  ans
}
