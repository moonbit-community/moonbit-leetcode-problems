///|
fn find_number_of_l_i_s(nums : Array[Int]) -> Int {
  let n : Int = nums.length()
  let f : Array[Int] = Array::make(n, 1)
  let cnt : Array[Int] = Array::make(n, 1)
  let mut mx : Int = 0
  let mut ans : Int = 0
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < i; j = j + 1 {
      if nums[j] < nums[i] {
        if f[i] < f[j] + 1 {
          f[i] = f[j] + 1
          cnt[i] = cnt[j]
        } else if f[i] == f[j] + 1 {
          cnt[i] = cnt[i] + cnt[j]
        }
      }
    }
    if mx < f[i] {
      mx = f[i]
      ans = cnt[i]
    } else if mx == f[i] {
      ans = ans + cnt[i]
    }
  }
  ans
}
