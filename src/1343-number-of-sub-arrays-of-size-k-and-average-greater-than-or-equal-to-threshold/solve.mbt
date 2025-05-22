fn num_of_subarrays(arr : Array[Int], k : Int, threshold : Int) -> Int {
  let mut sum_initial = 0
  for i = 0; i < k; i = i + 1 {
    sum_initial = sum_initial + arr[i]
  }
  let mut ans = if sum_initial >= k * threshold { 1 } else { 0 }
  let len = arr.length()
  let mut s = sum_initial
  for i = k; i < len; i = i + 1 {
    s = s + arr[i] - arr[i - k]
    ans = ans + (if s >= k * threshold { 1 } else { 0 })
  }
  ans
}
