test "example 1" {
  let ordered_stream = OrderedStream::new(5)
  assert_eq!(ordered_stream.insert(3, "ccccc"), [])
  assert_eq!(ordered_stream.insert(1, "aaaaa"), ["aaaaa"])
  assert_eq!(ordered_stream.insert(2, "bbbbb"), ["bbbbb", "ccccc"])
  assert_eq!(ordered_stream.insert(5, "eeeee"), [])
  assert_eq!(ordered_stream.insert(4, "ddddd"), ["ddddd", "eeeee"])
}
