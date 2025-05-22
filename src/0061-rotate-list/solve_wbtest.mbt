test "example 1" {
  let head = ListNode::{
    val: 1,
    next: Option::Some(
      ListNode::{
        val: 2,
        next: Option::Some(
          ListNode::{
            val: 3,
            next: Option::Some(
              ListNode::{
                val: 4,
                next: Option::Some(ListNode::{ val: 5, next: Option::None }),
              },
            ),
          },
        ),
      },
    ),
  }
  inspect!(
    rotate_right(head, 2),
    content="{val: 4, next: Some({val: 5, next: Some({val: 1, next: Some({val: 2, next: Some({val: 3, next: None})})})})}",
  )
}

test "example 2" {
  let head = ListNode::{
    val: 0,
    next: Option::Some(
      ListNode::{
        val: 1,
        next: Option::Some(ListNode::{ val: 2, next: Option::None }),
      },
    ),
  }
  inspect!(
    rotate_right(head, 4),
    content="{val: 2, next: Some({val: 0, next: Some({val: 1, next: None})})}",
  )
}
