///|
fn max_profit(prices : Array[Int], fee : Int) -> Int {
  let n : Int = prices.length()
  let f : Array[Array[Int]] = Array::make(n, Array::make(2, 0))
  f[0][1] = -prices[0]
  let mut i : Int = 1
  while i < n {
    f[i][0] = max(f[i - 1][0], f[i - 1][1] + prices[i] - fee)
    f[i][1] = max(f[i - 1][1], f[i - 1][0] - prices[i])
    i = i + 1
  }
  f[n - 1][0]
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
