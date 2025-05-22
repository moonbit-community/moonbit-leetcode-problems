///|
fn diet_plan_performance(
  calories : Array[Int],
  k : Int,
  lower : Int,
  upper : Int
) -> Int {
  let n = calories.length()
  let s : Array[Int] = Array::make(n + 1, 0)
  for i = 0; i < n; i = i + 1 {
    s[i + 1] = s[i] + calories[i]
  }
  let mut ans = 0
  for i = 0; i <= n - k; i = i + 1 {
    let t = s[i + k] - s[i]
    if t < lower {
      ans = ans - 1
    } else if t > upper {
      ans = ans + 1
    }
  }
  ans
}
