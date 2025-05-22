///|
fn sum(nums : Array[Int]) -> Int {
  let mut total = 0
  let mut i = 0
  while i < nums.length() {
    total = total + nums[i]
    i = i + 1
  }
  total
}

///|
fn pivot_index(nums : Array[Int]) -> Int {
  let mut left = 0
  let mut right = sum(nums)
  let mut i = 0
  while i < nums.length() {
    right = right - nums[i]
    if left == right {
      return i
    }
    left = left + nums[i]
    i = i + 1
  }
  return -1
}
