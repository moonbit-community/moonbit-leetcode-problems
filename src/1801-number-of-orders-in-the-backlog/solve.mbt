///|
fn number_of_orders_in_backlog(orders : Array[Array[Int]]) -> Int {
  let mod = 1_0000_0007
  let buy_backlog : @priority_queue.T[Int] = @priority_queue.new()
  let sell_backlog : @priority_queue.T[Int] = @priority_queue.new()
  for i = 0; i < orders.length(); i = i + 1 {
    let order = orders[i]
    let price = order[0]
    let mut amount = order[1]
    let order_type = order[2]
    if order_type == 0 { // Buy order
      while amount > 0 && not(sell_backlog.is_empty()) {
        let top_sell = sell_backlog.pop().or(0)
        if top_sell > price {
          sell_backlog.push(top_sell)
          break
        }
        amount -= top_sell
      }
      if amount > 0 {
        buy_backlog.push(amount)
      }
    } else { // Sell order
      while amount > 0 && not(buy_backlog.is_empty()) {
        let top_buy = buy_backlog.pop().or(0)
        if top_buy < price {
          buy_backlog.push(top_buy)
          break
        }
        amount -= top_buy
      }
      if amount > 0 {
        sell_backlog.push(amount)
      }
    }
  }
  let mut result = 0
  while not(buy_backlog.is_empty()) {
    result += buy_backlog.pop().or(0)
    result %= mod
  }
  while not(sell_backlog.is_empty()) {
    result += sell_backlog.pop().or(0)
    result %= mod
  }
  result
}
