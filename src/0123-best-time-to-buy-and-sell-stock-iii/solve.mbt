fn max_profit(prices : Array[Int]) -> Int {
  let mut f1 = -prices[0]
  let mut f2 = 0
  let mut f3 = -prices[0]
  let mut f4 = 0
  let mut i = 1
  while i < prices.length() {
    f1 = max(f1, -prices[i])
    f2 = max(f2, f1 + prices[i])
    f3 = max(f3, f2 - prices[i])
    f4 = max(f4, f3 + prices[i])
    i = i + 1
  }
  f4
}

fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}
