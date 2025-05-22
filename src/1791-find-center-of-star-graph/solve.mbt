fn find_center(edges : Array[Array[Int]]) -> Int {
  let first_edge = edges[0]
  let second_edge = edges[1]
  if first_edge[0] == second_edge[0] || first_edge[0] == second_edge[1] {
    return first_edge[0]
  } else {
    return first_edge[1]
  }
}
