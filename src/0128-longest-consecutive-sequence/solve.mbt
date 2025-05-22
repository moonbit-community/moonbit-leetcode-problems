///|
fn longest_consecutive(nums : Array[Int]) -> Int {
  let n = nums.length()
  if n < 2 {
    return n
  }
  nums.sort()
  let mut ans = 1
  let mut t = 1
  for i = 1; i < n; i = i + 1 {
    if nums[i] == nums[i - 1] {
      continue
    }
    if nums[i] == nums[i - 1] + 1 {
      t = t + 1
      if t > ans {
        ans = t
      }
    } else {
      t = 1
    }
  }
  ans
}
