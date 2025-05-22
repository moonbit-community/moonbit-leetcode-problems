fn valid_subarrays(nums : Array[Int]) -> Int {
  let n = nums.length()
  let right = Array::make(n, n)
  let stk : Array[Int] = Array::new()
  for i = n - 1; i >= 0; i = i - 1 {
    while not(stk.is_empty()) && nums[stk.get(stk.length() - 1).unwrap()] >= nums[i] {
      stk.pop() |> ignore
    }
    if not(stk.is_empty()) {
      right[i] = stk.get(stk.length() - 1).unwrap()
    }
    stk.push(i)
  }
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    ans = ans + (right[i] - i)
  }
  ans
}
