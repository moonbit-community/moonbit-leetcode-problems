fn min_flips_mono_incr(s : String) -> Int {
  let n : Int = s.length()
  let presum : Array[Int] = Array::make(n + 1, 0)
  let mut i : Int = 0
  while i < n {
    presum[i + 1] = presum[i] + if s[i] == '1' { 1 } else { 0 }
    i = i + 1
  }
  let mut ans : Int = n
  i = 0
  while i <= n {
    ans = min(ans, presum[i] + (n - i - (presum[n] - presum[i])))
    i = i + 1
  }
  ans
}

// Helper function to find minimum between two integers
///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
