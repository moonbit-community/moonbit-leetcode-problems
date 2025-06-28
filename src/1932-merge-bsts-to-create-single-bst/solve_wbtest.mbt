///|
test "example 1" {
  let trees = [
    Node(2, left=Node(1, left=Empty, right=Empty), right=Empty),
    Node(
      3,
      left=Node(2, left=Node(1, left=Empty, right=Empty), right=Empty),
      right=Node(5, left=Node(4, left=Empty, right=Empty), right=Empty),
    ),
    Node(5, left=Node(4, left=Empty, right=Empty), right=Empty),
  ]
  let result = merge_trees(trees)
  match result {
    Some(root) =>
      // Expected output: [3,2,5,1,null,4]
      // You can add more detailed checks here if needed
      assert_eq(
        root,
        Node(
          3,
          left=Node(2, left=Node(1, left=Empty, right=Empty), right=Empty),
          right=Node(5, left=Node(4, left=Empty, right=Empty), right=Empty),
        ),
      )
    None => @test.fail("Expected a valid BST")
  }
}

///|
test "example 2" {
  let trees = [
    Node(
      5,
      left=Node(
        3,
        left=Node(2, left=Empty, right=Empty),
        right=Node(6, left=Empty, right=Empty),
      ),
      right=Node(8, left=Empty, right=Empty),
    ),
    Node(
      3,
      left=Node(2, left=Empty, right=Empty),
      right=Node(6, left=Empty, right=Empty),
    ),
  ]
  inspect(merge_trees(trees), content="None")
}

///|
test "example 3" {
  let trees = [
    Node(5, left=Node(4, left=Empty, right=Empty), right=Empty),
    Node(3, left=Empty, right=Empty),
  ]
  inspect(merge_trees(trees), content="None")
}
