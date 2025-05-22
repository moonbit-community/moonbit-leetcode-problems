///|
fn number_of_ways_to_reconstruct_a_tree(pairs : Array[Array[Int]]) -> Int {
  // Create a map to store the adjacency list
  let adjacency_list = {}
  for i = 0; i < pairs.length(); i = i + 1 {
    let pair = pairs[i]
    let x = pair[0]
    let y = pair[1]
    if not(adjacency_list.contains(x)) {
      adjacency_list[x] = []
    }
    if not(adjacency_list.contains(y)) {
      adjacency_list[y] = []
    }
    adjacency_list[x].unwrap().push(y)
    adjacency_list[y].unwrap().push(x)
  }

  // Function to check if the graph is a tree
  fn is_tree(adjacency_list : Map[Int, Array[Int]], n : Int) -> Bool {
    let visited = Array::make(n + 1, false)
    let stack = []
    stack.push(1)
    visited[1] = true
    let mut nodes_visited = 1
    while stack.length() > 0 {
      let node = stack.pop().or(0)
      for i = 0; i < adjacency_list[node].unwrap().length(); i = i + 1 {
        let neighbor = adjacency_list[node].unwrap()[i]
        if not(visited[neighbor]) {
          visited[neighbor] = true
          stack.push(neighbor)
          nodes_visited = nodes_visited + 1
        }
      }
    }
    return nodes_visited == n
  }

  // Count the number of nodes

  let mut node_count = 0
  adjacency_list.each(fn(_key, _value) { node_count = node_count + 1 })

  // Check if the graph is a tree
  if not(is_tree(adjacency_list, node_count)) {
    return 0
  }

  // Check for multiple ways to construct the tree
  let mut ways = 0
  adjacency_list.each(fn(key, _value) {
    let visited = Array::make(node_count + 1, false)
    let stack = []
    stack.push(key)
    visited[key] = true
    let mut nodes_visited = 1
    while stack.length() > 0 {
      let node = stack.pop().or(0)
      for i = 0; i < adjacency_list[node].unwrap().length(); i = i + 1 {
        let neighbor = adjacency_list[node].unwrap()[i]
        if not(visited[neighbor]) {
          visited[neighbor] = true
          stack.push(neighbor)
          nodes_visited = nodes_visited + 1
        }
      }
    }
    if nodes_visited == node_count {
      ways = ways + 1
    }
  })
  if ways == 0 {
    return 0
  } else if ways == 1 {
    return 1
  } else {
    return 2
  }
}
