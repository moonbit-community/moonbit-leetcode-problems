///|
pub fn max_profit(prices : Array[Int]) -> Int {
  let mut res = 0
  for i in 0..<(prices.length() - 1) {
    res += @math.maximum(0, prices[i + 1] - prices[i])
  }
  res
}
