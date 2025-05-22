///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn max_frequency(nums : Array[Int], k : Int) -> Int {
  nums.sort()
  let n = nums.length()
  let mut left = 0
  let mut right = 0
  let mut total = 0
  let mut max_freq = 0
  while right < n {
    total += nums[right]
    while (right - left + 1) * nums[right] - total > k {
      total -= nums[left]
      left += 1
    }
    max_freq = max(max_freq, right - left + 1)
    right += 1
  }
  max_freq
}
