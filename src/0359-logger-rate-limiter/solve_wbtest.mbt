///|
test "Logger test 1" {
  let logger = Logger::new()
  assert_eq!(logger.should_print_message(1, "foo"), true)
  assert_eq!(logger.should_print_message(2, "bar"), true)
  assert_eq!(logger.should_print_message(3, "foo"), false)
  assert_eq!(logger.should_print_message(8, "bar"), false)
  assert_eq!(logger.should_print_message(10, "foo"), false)
  assert_eq!(logger.should_print_message(11, "foo"), true)
}
