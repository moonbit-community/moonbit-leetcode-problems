test "example 1" {
  assert_eq!(
    shortest_char("loveleetcode", 'e'),
    [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0],
  )
}

test "example 2" {
  assert_eq!(shortest_char("abc", 'a'), [0, 1, 2])
}

test "example 3" {
  assert_eq!(shortest_char("aabb", 'b'), [2, 1, 0, 0])
}
