fn min_degree_of_connected_trio(n : Int, edges : Array[Array[Int]]) -> Int {
  let adj_list : Array[Array[Int]] = Array::new(capacity=n + 1)
  for i = 0; i < edges.length(); i = i + 1 {
    let edge = edges[i]
    let u = edge[0]
    let v = edge[1]
    adj_list[u].push(v)
    adj_list[v].push(u)
  }
  let mut min_degree = 2_0000_0000
  for u = 1; u <= n; u = u + 1 {
    for v = u + 1; v <= n; v = v + 1 {
      for w = v + 1; w <= n; w = w + 1 {
        if adj_list[u].contains(v) && adj_list[v].contains(w) && adj_list[w].contains(
          u,
        ) {
          let degree = adj_list[u].length() + adj_list[v].length() + adj_list[w].length() -
            6
          if degree < min_degree {
            min_degree = degree
          }
        }
      }
    }
  }
  if min_degree == 2_0000_0000 {
    return -1
  }
  min_degree
}
