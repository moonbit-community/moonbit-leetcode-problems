///|
fn most_competitive(nums : Array[Int], k : Int) -> Array[Int] {
  let stk : Array[Int] = Array::new()
  let n = nums.length()
  for i = 0; i < n; i = i + 1 {
    while stk.length() > 0 &&
          stk[stk.length() - 1] > nums[i] &&
          stk.length() + n - i > k {
      stk.pop() |> ignore
    }
    if stk.length() < k {
      stk.push(nums[i])
    }
  }
  stk
}
