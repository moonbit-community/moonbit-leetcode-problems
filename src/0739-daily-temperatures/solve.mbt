///|
fn dailyTemperatures(temperatures : Array[Int]) -> Array[Int] {
  let n = temperatures.length()
  let ans : Array[Int] = Array::make(n, 0)
  let stk : Array[Int] = Array::new()
  let mut i = 0
  while i < n {
    while not(stk.is_empty()) &&
          temperatures[stk.get(stk.length() - 1).or(0)] < temperatures[i] {
      let j = stk.pop().or(0)
      ans[j] = i - j
    }
    stk.push(i)
    i = i + 1
  }
  ans
}
