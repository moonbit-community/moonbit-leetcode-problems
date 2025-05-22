///|
fn min(min_val1 : Int, min_val2 : Int) -> Int {
  if min_val1 < min_val2 {
    return min_val1
  } else {
    return min_val2
  }
}

///|
fn min_cost_climbing_stairs(cost : Array[Int]) -> Int {
  let n : Int = cost.length()
  let f : Array[Int] = Array::make(n + 1, 0)
  let mut i : Int = 2
  while i <= n {
    f[i] = min(f[i - 2] + cost[i - 2], f[i - 1] + cost[i - 1])
    i = i + 1
  }
  f[n]
}
