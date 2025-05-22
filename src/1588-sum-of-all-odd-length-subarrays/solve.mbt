fn sum_odd_length_subarrays(arr : Array[Int]) -> Int {
  let n = arr.length()
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    let mut s = 0
    for j = i; j < n; j = j + 1 {
      s = s + arr[j]
      if (j - i + 1) % 2 == 1 {
        ans = ans + s
      }
    }
  }
  ans
}
