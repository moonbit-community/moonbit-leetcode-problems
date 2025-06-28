///|
test "MRUQueue example" {
  let mru_queue = MRUQueue::new(8)
  assert_eq(mru_queue.fetch(3), 3)
  assert_eq(mru_queue.fetch(5), 6)
  assert_eq(mru_queue.fetch(2), 2)
  assert_eq(mru_queue.fetch(8), 2)
}
