test "checking push and pop operations" {
  let queue = FrontMiddleBackQueue::new()
  queue.push_front(1)
  queue.push_middle(2)
  queue.push_back(3)
  assert_eq!(queue.pop_front(), 1)
  assert_eq!(queue.pop_middle(), 2)
  assert_eq!(queue.pop_back(), 3)
}

test "checking after rebalancing" {
  let queue = FrontMiddleBackQueue::new()
  queue.push_front(1)
  queue.push_back(2)
  queue.push_middle(3)
  queue.push_back(4)
  assert_eq!(queue.pop_front(), 1)
  assert_eq!(queue.pop_back(), 4)
  assert_eq!(queue.pop_middle(), 3)
  assert_eq!(queue.pop_front(), 2)
}
