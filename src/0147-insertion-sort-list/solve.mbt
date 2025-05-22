///|
enum ListNode {
  Empty
  Node(Int, ListNode)
} derive(Eq, Show)

///|
fn insertion_sort_list(head : ListNode) -> ListNode {
  let dummy : ListNode = Node(-1, head)
  let mut cur : ListNode = dummy
  fn walk(prev : ListNode, current : ListNode) -> ListNode {
    match current {
      Empty => prev
      Node(cur_val, cur_next) => {
        let mut p : ListNode = dummy
        fn find_insert_point(
          prevP : ListNode,
          _p_val : Int,
          p_next : ListNode
        ) -> ListNode {
          match p_next {
            Empty => prevP
            Node(next_val, next_next) =>
              if next_val >= cur_val {
                prevP
              } else {
                find_insert_point(p_next, next_val, next_next)
              }
          }
        }

        p = find_insert_point(p, -1, dummy)
        match p {
          Node(_, p_next) => {
            let new_node : ListNode = Node(cur_val, cur_next)
            let temp_next : ListNode = p_next
            match prev {
              Node(prev_val, _) => {
                let new_prev : ListNode = Node(prev_val, new_node)
                cur = new_prev
              }
              Empty => ()
            }
            match temp_next {
              Node(temp_next_val, _) => {
                let new_p : ListNode = Node(temp_next_val, new_node)
                p = new_p
              }
              Empty => ()
            }
            match cur_next {
              Node(_, next_next) => walk(new_node, next_next)
              Empty => dummy
            }
          }
          Empty => prev
        }
      }
    }
  }

  walk(dummy, head)
}
