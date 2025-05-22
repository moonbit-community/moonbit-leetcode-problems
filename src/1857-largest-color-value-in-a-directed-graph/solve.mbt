///|
fn largest_color_value_in_directed_graph(
  colors : String,
  edges : Array[Array[Int]]
) -> Int {
  let n = colors.length()
  let graph : @hashmap.T[Int, Array[Int]] = @hashmap.new()
  let in_degree = Array::make(n, 0)

  // Build the graph and calculate in-degrees
  for i = 0; i < edges.length(); i = i + 1 {
    let from = edges[i][0]
    let to = edges[i][1]
    graph.get_or_default(from, Array::new()).push(to)
    in_degree[to] += 1
  }

  // Initialize the color frequency array
  let color_freq = Array::make(n, Array::make(26, 0))
  let queue = Array::new()

  // Initialize the queue with nodes having in-degree of 0
  for i = 0; i < n; i = i + 1 {
    if in_degree[i] == 0 {
      queue.push(i)
      color_freq[i][colors[i].to_int() - 'a'.to_int()] = 1
    }
  }
  let mut visited_nodes = 0
  let mut max_color_value = 0

  // Kahn's algorithm for topological sorting
  while queue.length() > 0 {
    let node = queue.pop().unwrap()
    visited_nodes += 1
    for i = 0; i < 26; i = i + 1 {
      max_color_value = @math.maximum(max_color_value, color_freq[node][i])
    }
    if graph.contains(node) {
      graph
      .get(node)
      .unwrap()
      .each(fn(neighbor) {
        for i = 0; i < 26; i = i + 1 {
          color_freq[neighbor][i] = @math.maximum(
            color_freq[neighbor][i],
            color_freq[node][i],
          )
        }
        color_freq[neighbor][colors[neighbor].to_int() - 'a'.to_int()] += 1
        in_degree[neighbor] -= 1
        if in_degree[neighbor] == 0 {
          queue.push(neighbor)
        }
      })
    }
  }

  // If not all nodes are visited, there is a cycle
  if visited_nodes != n {
    return -1
  }
  return max_color_value
}

// Test cases
