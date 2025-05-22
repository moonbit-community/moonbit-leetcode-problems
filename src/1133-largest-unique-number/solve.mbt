///|
fn largest_unique_number(nums : Array[Int]) -> Int {
  let cnt : Array[Int] = Array::make(1001, 0)
  let mut idx = 0
  while idx < nums.length() {
    cnt[nums[idx]] = cnt[nums[idx]] + 1
    idx = idx + 1
  }
  let mut x = 1000
  while x >= 0 {
    if cnt[x] == 1 {
      return x
    }
    x = x - 1
  }
  -1
}
