fn restore_array(adjacent_pairs : Array[Array[Int]]) -> Array[Int] {
  let graph : @hashmap.T[Int, Array[Int]] = @hashmap.new()
  let degree : @hashmap.T[Int, Int] = @hashmap.new()

  // Build the graph and degree map
  for i = 0; i < adjacent_pairs.length(); i = i + 1 {
    let pair = adjacent_pairs[i]
    let u = pair[0]
    let v = pair[1]
    if not(graph.contains(u)) {
      graph.set(u, [])
    }
    if not(graph.contains(v)) {
      graph.set(v, [])
    }
    graph.get(u).unwrap().push(v)
    graph.get(v).unwrap().push(u)
    degree.set(u, degree.get_or_default(u, 0) + 1)
    degree.set(v, degree.get_or_default(v, 0) + 1)
  }

  // Find the start node (a node with degree 1)
  let mut start_node = 0
  degree.each(fn(node, d) { if d == 1 { start_node = node } })
  let result : Array[Int] = []
  let visited : @hashmap.T[Int, Bool] = @hashmap.new()

  // DFS to reconstruct the array
  fn dfs(node : Int) {
    result.push(node)
    visited.set(node, true)
    let neighbors = graph.get(node).unwrap()
    for i = 0; i < neighbors.length(); i = i + 1 {
      let neighbor = neighbors[i]
      if not(visited.get_or_default(neighbor, false)) {
        dfs(neighbor)
      }
    }
  }

  dfs(start_node)
  result
}

// Test cases
