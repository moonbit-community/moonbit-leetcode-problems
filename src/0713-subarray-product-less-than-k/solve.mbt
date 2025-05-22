fn num_subarray_product_less_than_k(nums : Array[Int], k : Int) -> Int {
  let mut ans = 0
  let n = nums.length()
  let mut i = 0
  let mut j = 0
  let mut s = 1
  while i < n {
    s = s * nums[i]
    while j <= i && s >= k {
      s = s / nums[j]
      j = j + 1
    }
    ans = ans + (i - j + 1)
    i = i + 1
  }
  ans
}
