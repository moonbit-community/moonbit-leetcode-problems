test "RecentCounter test" {
  let obj = RecentCounter::new()
  assert_eq!(obj.ping(1), 1)
  assert_eq!(obj.ping(100), 2)
  assert_eq!(obj.ping(3001), 3)
  assert_eq!(obj.ping(3002), 3)
}
