///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn two_sum_less_than_k(nums : Array[Int], k : Int) -> Int {
  nums.sort()
  let mut ans = -1
  let mut i = 0
  let mut j = nums.length() - 1
  while i < j {
    let s = nums[i] + nums[j]
    if s < k {
      ans = max(ans, s)
      i = i + 1
    } else {
      j = j - 1
    }
  }
  ans
}
