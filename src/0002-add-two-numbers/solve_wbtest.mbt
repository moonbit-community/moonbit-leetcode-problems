///|
test "example 1" {
  let l1 = Option::Some(ListNode::{
    val: 2,
    next: Option::Some(ListNode::{
      val: 4,
      next: Option::Some(ListNode::{ val: 3, next: Option::None }),
    }),
  })
  let l2 = Option::Some(ListNode::{
    val: 5,
    next: Option::Some(ListNode::{
      val: 6,
      next: Option::Some(ListNode::{ val: 4, next: Option::None }),
    }),
  })
  let expected = Option::Some(ListNode::{
    val: 7,
    next: Option::Some(ListNode::{
      val: 0,
      next: Option::Some(ListNode::{ val: 8, next: Option::None }),
    }),
  })
  assert_eq(add_two_numbers(l1, l2), expected)
}

///|
test "example 2" {
  let l1 = Option::Some(ListNode::{ val: 0, next: Option::None })
  let l2 = Option::Some(ListNode::{ val: 0, next: Option::None })
  let expected = Option::Some(ListNode::{ val: 0, next: Option::None })
  assert_eq(add_two_numbers(l1, l2), expected)
}

///|
test "example 3" {
  let l1 = Option::Some(ListNode::{
    val: 9,
    next: Option::Some(ListNode::{
      val: 9,
      next: Option::Some(ListNode::{
        val: 9,
        next: Option::Some(ListNode::{
          val: 9,
          next: Option::Some(ListNode::{
            val: 9,
            next: Option::Some(ListNode::{
              val: 9,
              next: Option::Some(ListNode::{ val: 9, next: Option::None }),
            }),
          }),
        }),
      }),
    }),
  })
  let l2 = Option::Some(ListNode::{
    val: 9,
    next: Option::Some(ListNode::{
      val: 9,
      next: Option::Some(ListNode::{
        val: 9,
        next: Option::Some(ListNode::{ val: 9, next: Option::None }),
      }),
    }),
  })
  let expected = Option::Some(ListNode::{
    val: 8,
    next: Option::Some(ListNode::{
      val: 9,
      next: Option::Some(ListNode::{
        val: 9,
        next: Option::Some(ListNode::{
          val: 9,
          next: Option::Some(ListNode::{
            val: 0,
            next: Option::Some(ListNode::{
              val: 0,
              next: Option::Some(ListNode::{
                val: 0,
                next: Option::Some(ListNode::{ val: 1, next: Option::None }),
              }),
            }),
          }),
        }),
      }),
    }),
  })
  assert_eq(add_two_numbers(l1, l2), expected)
}
