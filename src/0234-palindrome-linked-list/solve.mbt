enum ListNode {
  Nil
  Node(Int, ListNode)
}

fn is_palindrome(head : ListNode) -> Bool {
  let mut slow : ListNode = head
  let mut fast : ListNode = match head {
    Nil => Nil
    Node(_, next) => next
  }
  while match fast {
          Nil => false
          Node(_, next) =>
            match next {
              Nil => false
              _ => true
            }
        } {
    slow = match slow {
      Node(val, next) => next
      Nil => Nil
    }
    fast = match fast {
      Node(_, Node(_, next_next)) => next_next
      _ => Nil
    }
  }

  // Reverse half of the list
  let mut cur : ListNode = match slow {
    Node(_, next) => next
    Nil => Nil
  }
  let mut prev : ListNode = Nil
  while match cur {
          Nil => false
          _ => true
        } {
    let t : ListNode = match cur {
      Node(_, next) => next
      Nil => Nil
    }
    cur = match t {
      Nil => Nil
      _ => t
    }
    prev = match cur {
      Node(value, _) => Node(value, prev)
      Nil => Nil
    }
    cur = t
  }
  slow = match slow {
    Node(val, _) => Node(val, Nil)
    Nil => Nil
  }

  // Compare reversed half with the first half
  let mut left : ListNode = head
  let mut right : ListNode = prev
  while match right {
          Nil => false
          _ => true
        } {
    match (left, right) {
      (Node(val1, next1), Node(val2, next2)) => {
        if val1 != val2 {
          return false
        }
        left = next1
        right = next2
      }
      (_, _) => break
    }
  }
  true
}
