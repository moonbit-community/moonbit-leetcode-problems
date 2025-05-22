///|
fn find_duplicate(nums : Array[Int]) -> Int {
  let mut l = 0
  let mut r = nums.length() - 1
  while l < r {
    let mid = (l + r) / 2
    let mut cnt = 0
    let mut i = 0
    while i < nums.length() {
      if nums[i] <= mid {
        cnt = cnt + 1
      }
      i = i + 1
    }
    if cnt > mid {
      r = mid
    } else {
      l = mid + 1
    }
  }
  l
}
