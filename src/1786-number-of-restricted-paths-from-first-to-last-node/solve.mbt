///|
fn dijkstra(n : Int, edges : Array[Array[Int]], start : Int) -> Array[Int] {
  let graph : Array[Array[(Int, Int)]] = Array::make(n + 1, Array::new())
  for i = 0; i < edges.length(); i = i + 1 {
    let edge = edges[i]
    let u = edge[0]
    let v = edge[1]
    let w = edge[2]
    graph[u].push((v, w))
    graph[v].push((u, w))
  }
  let dist : Array[Int] = Array::make(n + 1, 2_0000_0000)
  dist[start] = 0
  let heap : Array[(Int, Int)] = Array::make(1, (start, 0))
  let visited : Array[Bool] = Array::make(n + 1, false)
  while heap.length() > 0 {
    let (u, d) = heap.pop().unwrap()
    if visited[u] {
      continue
    }
    visited[u] = true
    for i = 0; i < graph[u].length(); i = i + 1 {
      let (v, w) = graph[u][i]
      if dist[u] + w < dist[v] {
        dist[v] = dist[u] + w
        heap.push((v, dist[v]))
        heap.sort_by(fn(a, b) { a.1 - b.1 })
      }
    }
  }
  dist
}

///|
fn count_restricted_paths(n : Int, edges : Array[Array[Int]]) -> Int {
  let dist = dijkstra(n, edges, n)
  let graph : Array[Array[Int]] = Array::make(n + 1, Array::new())
  for i = 0; i < edges.length(); i = i + 1 {
    let edge = edges[i]
    let u = edge[0]
    let v = edge[1]
    graph[u].push(v)
    graph[v].push(u)
  }
  let dp : Array[Int] = Array::make(n + 1, 0)
  dp[n] = 1
  let sorted_nodes = Array::make(n, 0)
  for i = 1; i <= n; i = i + 1 {
    sorted_nodes[i - 1] = i
  }
  sorted_nodes.sort_by(fn(a, b) { dist[a] - dist[b] })
  for i = 0; i < sorted_nodes.length(); i = i + 1 {
    let u = sorted_nodes[i]
    let neighbors = graph[u]
    for j = 0; j < neighbors.length(); j = j + 1 {
      let v = neighbors[j]
      if dist[u] > dist[v] {
        dp[u] = (dp[u] + dp[v]) % 1_000_000_007
      }
    }
  }
  dp[1]
}
