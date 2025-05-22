test "SeatManager tests" {
  let seat_manager = SeatManager::new(5)
  assert_eq!(seat_manager.reserve(), 1)
  assert_eq!(seat_manager.reserve(), 2)
  seat_manager.unreserve(2)
  assert_eq!(seat_manager.reserve(), 2)
  assert_eq!(seat_manager.reserve(), 3)
  assert_eq!(seat_manager.reserve(), 4)
  assert_eq!(seat_manager.reserve(), 5)
  seat_manager.unreserve(5)
}
