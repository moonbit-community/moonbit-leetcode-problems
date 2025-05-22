fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn max_in_array(arr : Array[Int]) -> Int {
  let mut max_val = arr[0]
  for i = 1; i < arr.length(); i = i + 1 {
    max_val = max(max_val, arr[i])
  }
  max_val
}

fn maximum_unique_subarray(nums : Array[Int]) -> Int {
  let m = max_in_array(nums)
  let n = nums.length()
  let s = Array::make(n + 1, 0)
  for i = 1; i <= n; i = i + 1 {
    s[i] = s[i - 1] + nums[i - 1]
  }
  let d = Array::make(m + 1, 0)
  let mut ans = 0
  let mut j = 0
  for i = 1; i <= n; i = i + 1 {
    j = max(j, d[nums[i - 1]])
    ans = max(ans, s[i] - s[j])
    d[nums[i - 1]] = i
  }
  ans
}
