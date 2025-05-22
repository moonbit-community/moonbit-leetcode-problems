///|
fn count_greater_or_equal(nums : Array[Int], x : Int) -> Int {
  let mut count = 0
  for i = 0; i < nums.length(); i = i + 1 {
    if nums[i] >= x {
      count = count + 1
    }
  }
  count
}

///|
fn special_array(nums : Array[Int]) -> Int {
  let n = nums.length()
  for i = 0; i <= n; i = i + 1 {
    if i == count_greater_or_equal(nums, i) {
      return i
    }
  }
  -1
}
