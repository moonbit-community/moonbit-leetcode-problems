///|
fn max_profit(prices : Array[Int]) -> Int {
  let n = prices.length()
  let mut f : Array[Int] = [-prices[0], 0]
  let mut i = 1
  while i < n {
    let g : Array[Int] = [0, 0]
    g[0] = max(f[0], f[1] - prices[i])
    g[1] = max(f[1], f[0] + prices[i])
    f = g
    i = i + 1
  }
  f[1]
}

///|
fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}
