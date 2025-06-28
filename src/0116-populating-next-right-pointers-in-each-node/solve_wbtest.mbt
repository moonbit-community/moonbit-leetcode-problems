///|
test "example 1" {
  let tree = Tree::Node(
    1,
    Node(
      2,
      Node(4, Empty, Empty, Empty),
      Node(5, Empty, Empty, Empty),
      Node(3, Empty, Empty, Empty),
    ),
    Node(3, Node(6, Empty, Empty, Empty), Node(7, Empty, Empty, Empty), Empty),
    Empty,
  )
  let null = Json::null()
  @json.inspect(connect(tree), content=[
    1,
    [
      2,
      [4, null, null, [5, null, null, null]],
      [5, null, null, [6, null, null, null]],
      [3, [6, null, null, null], [7, null, null, null], null],
    ],
    [3, [6, null, null, [7, null, null, null]], [7, null, null, null], null],
    null,
  ])
}
