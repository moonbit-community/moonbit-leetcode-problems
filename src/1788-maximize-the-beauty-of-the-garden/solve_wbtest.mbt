///|
test "example 1" {
  let flowers = [1, 2, 3, 1, 2]
  assert_eq!(maximize_beauty(flowers), 8)
}

///|
test "example 2" {
  let flowers = [100, 1, 1, -3, 1]
  assert_eq!(maximize_beauty(flowers), 3)
}

///|
test "example 3" {
  let flowers = [-1, -2, 0, -1]
  assert_eq!(maximize_beauty(flowers), -2)
}
