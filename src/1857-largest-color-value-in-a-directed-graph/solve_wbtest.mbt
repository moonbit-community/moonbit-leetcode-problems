///|
test "example 1" {
  let colors = "abaca"
  let edges = [[0, 1], [0, 2], [2, 3], [3, 4]]
  assert_eq(largest_color_value_in_directed_graph(colors, edges), 3)
}

///|
test "example 2" {
  let colors = "a"
  let edges = [[0, 0]]
  assert_eq(largest_color_value_in_directed_graph(colors, edges), -1)
}

///|
test "example 3" {
  let colors = "abc"
  let edges = [[0, 1], [1, 2]]
  assert_eq(largest_color_value_in_directed_graph(colors, edges), 1)
}

///|
test "example 4" {
  let colors = "aabbcc"
  let edges = [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]]
  assert_eq(largest_color_value_in_directed_graph(colors, edges), 2)
}
