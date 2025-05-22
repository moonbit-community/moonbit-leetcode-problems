///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn max_sum_div_three(nums : Array[Int]) -> Int {
  let n = nums.length()
  let inf = @int.max_value
  let f : Array[Array[Int]] = Array::make(n + 1, Array::make(3, -inf))
  f[0][0] = 0
  for i = 1; i <= n; i = i + 1 {
    let x = nums[i - 1]
    for j = 0; j < 3; j = j + 1 {
      let idx = (j - x % 3 + 3) % 3
      f[i][j] = max(f[i - 1][j], f[i - 1][idx] + x)
    }
  }
  f[n][0]
}
