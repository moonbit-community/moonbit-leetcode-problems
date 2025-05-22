test "example 1" {
  let result = incremental_memory_leak(2, 2)
  assert_eq!(result, [3, 1, 0])
}

test "example 2" {
  let result = incremental_memory_leak(8, 11)
  assert_eq!(result, [6, 0, 4])
}

test "edge case 1" {
  let result = incremental_memory_leak(0, 0)
  assert_eq!(result, [1, 0, 0])
}

test "edge case 2" {
  let result = incremental_memory_leak(1, 1)
  assert_eq!(result, [2, 0, 1])
}

test "large numbers" {
  let result = incremental_memory_leak(2147483647, 2147483647)
  assert_eq!(result, [65536, 2147418112, 2147418112])
}
