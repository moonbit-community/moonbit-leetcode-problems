fn difference(a : (Int, Int), b : (Int, Int)) -> Int {
  a.0 - a.1 - (b.0 - b.1)
}

fn sort_by_difference(costs : Array[(Int, Int)]) -> Array[(Int, Int)] {
  let len = costs.length()
  let sorted = costs
  for i = 0; i < len - 1; i = i + 1 {
    for j = 0; j < len - i - 1; j = j + 1 {
      if difference(sorted[j], sorted[j + 1]) > 0 {
        let temp = sorted[j]
        sorted[j] = sorted[j + 1]
        sorted[j + 1] = temp
      }
    }
  }
  sorted
}

fn two_city_sched_cost(costs : Array[(Int, Int)]) -> Int {
  let sorted_costs = sort_by_difference(costs)
  let n = sorted_costs.length() / 2
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    ans = ans + sorted_costs[i].0 + sorted_costs[i + n].1
  }
  ans
}
