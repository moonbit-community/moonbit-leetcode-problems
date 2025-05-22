fn max_sum_range_query(nums : Array[Int], requests : Array[Array[Int]]) -> Int {
  let n = nums.length()
  let d = Array::make(n, 0)
  requests.each(
    fn(request) {
      let l = request[0]
      let r = request[1]
      d[l] = d[l] + 1
      if r + 1 < n {
        d[r + 1] = d[r + 1] - 1
      }
    },
  )
  for i = 1; i < n - 1; i = i + 1 {
    d[i] = d[i] + d[i - 1]
  }
  let sorted_nums = @immut/list.T::from_array(nums).sort().to_array()
  let sorted_d = @immut/list.T::from_array(d).sort().to_array()
  let mut ans = 0
  let mod = 1000000007
  for i = 0; i < n; i = i + 1 {
    ans = (ans + sorted_nums[i] * sorted_d[i]) % mod
  }
  ans
}
