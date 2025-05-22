fn max_ice_cream_bars(costs : Array[Int], coins : Int) -> Int {
  let max_cost = 100000
  let count = Array::make(max_cost + 1, 0)

  // Counting sort
  for i = 0; i < costs.length(); i = i + 1 {
    count[costs[i]] += 1
  }

  // Accumulate counts
  for i = 1; i <= max_cost; i = i + 1 {
    count[i] += count[i - 1]
  }

  // Determine the maximum number of ice cream bars
  let mut remaining_coins = coins
  let mut max_bars = 0
  for i = 1; i <= max_cost; i = i + 1 {
    let max_affordable = count[i]
    if max_affordable == 0 {
      continue
    }
    let cost = i
    let bars_at_this_cost = if cost == 0 {
      max_affordable
    } else {
      max_affordable - count[i - 1]
    }
    for j = 0; j < bars_at_this_cost; j = j + 1 {
      if remaining_coins >= cost {
        remaining_coins -= cost
        max_bars += 1
      } else {
        break
      }
    }
  }
  max_bars
}
