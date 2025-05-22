///|
fn count_pairs_of_nodes(
  n : Int,
  edges : Array[Array[Int]],
  queries : Array[Int]
) -> Array[Int] {
  let node_counts = Array::make(n + 1, 0)
  let edge_counts = @hashmap.new()

  // Count the incidence of each node and store edge counts
  for i = 0; i < edges.length(); i = i + 1 {
    let u = edges[i][0]
    let v = edges[i][1]
    node_counts[u] += 1
    node_counts[v] += 1
    let key = if u < v {
      u.to_string() + "," + v.to_string()
    } else {
      v.to_string() + "," + u.to_string()
    }
    edge_counts.set(key, edge_counts.get_or_default(key, 0) + 1)
  }

  // Prepare the result array
  let result = Array::make(queries.length(), 0)

  // Calculate the number of pairs for each query
  for q = 0; q < queries.length(); q = q + 1 {
    let query = queries[q]
    let mut count = 0

    // Count pairs (a, b) where incident(a, b) > query
    for a = 1; a <= n; a = a + 1 {
      for b = a + 1; b <= n; b = b + 1 {
        let key = a.to_string() + "," + b.to_string()
        let incident_count = node_counts[a] +
          node_counts[b] -
          edge_counts.get_or_default(key, 0)
        if incident_count > query {
          count += 1
        }
      }
    }
    result[q] = count
  }
  result
}

// Test cases
