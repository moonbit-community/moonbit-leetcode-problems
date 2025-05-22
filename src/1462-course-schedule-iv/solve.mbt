///|
fn check_if_prerequisite(
  n : Int,
  prerequisites : Array[(Int, Int)],
  queries : Array[(Int, Int)]
) -> Array[Bool] {
  // Initialize the f matrix
  let f : Array[Array[Bool]] = Array::make(n, Array::make(n, false))

  // Populate the f matrix based on prerequisites
  prerequisites.each(fn(x) { f[x.0][x.1] = true })

  // Floyd-Warshall algorithm to find all reachable vertices
  for k = 0; k < n; k = k + 1 {
    for i = 0; i < n; i = i + 1 {
      for j = 0; j < n; j = j + 1 {
        f[i][j] = f[i][j] || (f[i][k] && f[k][j])
      }
    }
  }

  // Check prerequisites for each query
  queries.map(fn(x) { f[x.0][x.1] })
}
