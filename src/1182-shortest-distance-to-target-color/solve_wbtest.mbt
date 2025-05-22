test "example 1" {
  let colors = [1, 1, 2, 1, 3, 2, 2, 3, 3]
  let queries = @immut/list.T::of([(1, 3), (2, 2), (6, 1)])
  assert_eq!(
    shortest_distance_color(colors, queries),
    @immut/list.T::of([3, 0, 3]),
  )
}

test "example 2" {
  let colors = [1, 2, 3, 4]
  let queries = @immut/list.T::of([(1, 4), (0, 2)])
  assert_eq!(shortest_distance_color(colors, queries), @immut/list.T::of([3, 1]))
}
