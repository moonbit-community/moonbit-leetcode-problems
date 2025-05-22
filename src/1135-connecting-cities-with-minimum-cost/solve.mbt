///|
fn find(p : Array[Int], x : Int) -> Int {
  if p[x] != x {
    p[x] = find(p, p[x])
  }
  p[x]
}

///|
fn minimum_cost(n : Int, connections : Array[Array[Int]]) -> Int {
  let mut n = n
  let p : Array[Int] = Array::make(n, 0)
  for i = 0; i < n; i = i + 1 {
    p[i] = i
  }
  fn sort_connections(connections : Array[Array[Int]]) -> Array[Array[Int]] {
    for i = 1; i < connections.length(); i = i + 1 {
      let key = connections[i]
      let cost = key[2]
      for j = i - 1; j >= 0 && connections[j][2] > cost; j = j - 1 {
        connections[j + 1] = connections[j]
      } else {
        connections[j + 1] = key
      }
    }
    connections
  }

  let sorted_connections = sort_connections(connections)
  let mut ans = 0
  for i = 0; i < sorted_connections.length(); i = i + 1 {
    let x = sorted_connections[i][0] - 1
    let y = sorted_connections[i][1] - 1
    let cost = sorted_connections[i][2]
    if find(p, x) == find(p, y) {
      continue
    }
    p[find(p, x)] = find(p, y)
    ans = ans + cost
    if n == 2 {
      return ans
    }
    n = n - 1
  }
  -1
}
