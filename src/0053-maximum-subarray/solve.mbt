///|
fn max_sub_array(nums : Array[Int]) -> Int {
  let mut ans = nums[0]
  let mut f = nums[0]
  let mut i = 1
  while i < nums.length() {
    f = max_sub_array_int(f, 0) + nums[i]
    ans = max_sub_array_int(ans, f)
    i = i + 1
  }
  ans
}

///|
fn max_sub_array_int(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
