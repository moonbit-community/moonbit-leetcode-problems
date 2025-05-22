fn find_length_of_l_c_i_s(nums : Array[Int]) -> Int {
  let mut ans = 1
  let mut cnt = 1
  let mut i = 1
  while i < nums.length() {
    if nums[i - 1] < nums[i] {
      cnt = cnt + 1
      ans = max(ans, cnt)
    } else {
      cnt = 1
    }
    i = i + 1
  }
  ans
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
