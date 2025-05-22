///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

///|
fn find_max_consecutive_ones(nums : Array[Int]) -> Int {
  let mut cnt = 0
  let mut ans = 0
  let n = nums.length()
  for i = 0; i < n; i = i + 1 {
    if nums[i] == 1 {
      cnt = cnt + 1
    } else {
      ans = max(ans, cnt)
      cnt = 0
    }
  }
  max(cnt, ans)
}
