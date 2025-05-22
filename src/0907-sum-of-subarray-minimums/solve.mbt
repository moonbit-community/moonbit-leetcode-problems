fn sum_subarray_mins(arr : Array[Int]) -> Int {
  let n = arr.length()
  let left : Array[Int] = Array::make(n, -1)
  let right : Array[Int] = Array::make(n, n)
  let stk : Array[Int] = Array::new()

  // Fill left array
  for i = 0; i < n; i = i + 1 {
    while not(stk.is_empty()) && arr[stk.get(stk.length() - 1).or(0)] >= arr[i] {
      stk.pop() |> ignore
    }
    if not(stk.is_empty()) {
      left[i] = stk.get(stk.length() - 1).or(0)
    }
    stk.push(i)
  }
  stk.clear()

  // Fill right array
  for i = n - 1; i >= 0; i = i - 1 {
    while not(stk.is_empty()) && arr[stk.get(stk.length() - 1).or(0)] > arr[i] {
      stk.pop() |> ignore
    }
    if not(stk.is_empty()) {
      right[i] = stk.get(stk.length() - 1).or(0)
    }
    stk.push(i)
  }
  let mod = 1000000007
  let mut ans : Int = 0
  for i = 0; i < n; i = i + 1 {
    ans = (ans + (i - left[i]) * (right[i] - i) % mod * (arr[i] % mod)) % mod
  }
  ans
}
