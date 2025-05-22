///|
test "example 1" {
  let root = TreeNode::{
    val: 3,
    left: Some(TreeNode::{
      val: 5,
      left: Some(TreeNode::{ val: 6, left: None, right: None }),
      right: Some(TreeNode::{
        val: 2,
        left: Some(TreeNode::{ val: 7, left: None, right: None }),
        right: Some(TreeNode::{ val: 4, left: None, right: None }),
      }),
    }),
    right: Some(TreeNode::{
      val: 1,
      left: Some(TreeNode::{ val: 0, left: None, right: None }),
      right: Some(TreeNode::{ val: 8, left: None, right: None }),
    }),
  }
  assert_eq!(find_distance_between_nodes(root, 5, 0), 3)
}

///|
test "example 2" {
  let root = TreeNode::{
    val: 3,
    left: Some(TreeNode::{
      val: 5,
      left: Some(TreeNode::{ val: 6, left: None, right: None }),
      right: Some(TreeNode::{
        val: 2,
        left: Some(TreeNode::{ val: 7, left: None, right: None }),
        right: Some(TreeNode::{ val: 4, left: None, right: None }),
      }),
    }),
    right: Some(TreeNode::{
      val: 1,
      left: Some(TreeNode::{ val: 0, left: None, right: None }),
      right: Some(TreeNode::{ val: 8, left: None, right: None }),
    }),
  }
  assert_eq!(find_distance_between_nodes(root, 5, 7), 2)
}

///|
test "example 3" {
  let root = TreeNode::{
    val: 3,
    left: Some(TreeNode::{
      val: 5,
      left: Some(TreeNode::{ val: 6, left: None, right: None }),
      right: Some(TreeNode::{
        val: 2,
        left: Some(TreeNode::{ val: 7, left: None, right: None }),
        right: Some(TreeNode::{ val: 4, left: None, right: None }),
      }),
    }),
    right: Some(TreeNode::{
      val: 1,
      left: Some(TreeNode::{ val: 0, left: None, right: None }),
      right: Some(TreeNode::{ val: 8, left: None, right: None }),
    }),
  }
  assert_eq!(find_distance_between_nodes(root, 5, 5), 0)
}
