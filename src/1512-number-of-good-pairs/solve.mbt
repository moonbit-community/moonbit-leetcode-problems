///|
fn num_identical_pairs(nums : Array[Int]) -> Int {
  let cnt = Array::make(101, 0)
  let mut ans = 0
  for i = 0; i < nums.length(); i = i + 1 {
    let x = nums[i]
    ans = ans + cnt[x]
    cnt[x] = cnt[x] + 1
  }
  ans
}
