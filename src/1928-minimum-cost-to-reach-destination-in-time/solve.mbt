///|
struct Edge {
  to : Int
  time : Int
}

///|
fn min_cost_to_reach_destination_in_time(
  max_time : Int,
  edges : Array[Array[Int]],
  passing_fees : Array[Int]
) -> Int {
  let n = passing_fees.length()
  let dp = Array::make(n, Array::make(max_time + 1, @int.max_value))
  dp[0][0] = passing_fees[0]
  let edge_list = Array::make(n, Array::new())
  for i = 0; i < edges.length(); i = i + 1 {
    let edge = edges[i]
    let from = edge[0]
    let to = edge[1]
    let time = edge[2]
    edge_list[from].push(Edge::{ to, time })
    edge_list[to].push(Edge::{ to: from, time })
  }
  for time = 0; time <= max_time; time = time + 1 {
    for city = 0; city < n; city = city + 1 {
      if dp[city][time] != @int.max_value {
        for e = 0; e < edge_list[city].length(); e = e + 1 {
          let edge = edge_list[city][e]
          let next_city = edge.to
          let next_time = time + edge.time
          if next_time <= max_time {
            dp[next_city][next_time] = min(
              dp[next_city][next_time],
              dp[city][time] + passing_fees[next_city],
            )
          }
        }
      }
    }
  }
  let mut min_cost = @int.max_value
  for time = 0; time <= max_time; time = time + 1 {
    min_cost = min(min_cost, dp[n - 1][time])
  }
  if min_cost == @int.max_value {
    -1
  } else {
    min_cost
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
