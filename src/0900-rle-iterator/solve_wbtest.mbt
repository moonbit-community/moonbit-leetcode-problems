test "example 1" {
  let iter = RLEIterator::new([3, 8, 0, 9, 2, 5])
  assert_eq!(RLEIterator::next(iter, 2), 8)
  assert_eq!(RLEIterator::next(iter, 1), 8)
  assert_eq!(RLEIterator::next(iter, 1), 5)
  assert_eq!(RLEIterator::next(iter, 2), -1)
}
