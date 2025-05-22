///|
fn majority_element(nums : Array[Int]) -> Int {
  let mut cnt = 0
  let mut m = 0
  for i = 0; i < nums.length(); i = i + 1 {
    if cnt == 0 {
      m = nums[i]
      cnt = 1
    } else if m == nums[i] {
      cnt = cnt + 1
    } else {
      cnt = cnt - 1
    }
  }
  m
}
