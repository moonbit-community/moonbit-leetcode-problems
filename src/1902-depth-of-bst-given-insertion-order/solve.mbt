// Define the TreeNode structure

///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

// Function to insert a value into the BST and return the depth of the tree

///|
fn insert_and_get_depth(root : TreeNode, val : Int) -> (TreeNode, Int) {
  match root {
    Empty => (Node(val, Empty, Empty), 1)
    Node(data, left, right) =>
      if val < data {
        let (new_left, left_depth) = insert_and_get_depth(left, val)
        (Node(data, new_left, right), 1 + left_depth)
      } else {
        let (new_right, right_depth) = insert_and_get_depth(right, val)
        (Node(data, left, new_right), 1 + right_depth)
      }
  }
}

// Main function to calculate the depth of the BST given the insertion order

///|
fn depth_of_bst_given_insertion_order(order : Array[Int]) -> Int {
  let mut root = Empty
  let mut max_depth = 0
  for i = 0; i < order.length(); i = i + 1 {
    let (new_root, depth) = insert_and_get_depth(root, order[i])
    root = new_root
    if depth > max_depth {
      max_depth = depth
    }
  }
  max_depth
}

// Test cases
