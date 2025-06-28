///|
test "example 1" {
  let edges = @immut/list.of([
    @immut/list.of([0, 1]),
    @immut/list.of([0, 2]),
    @immut/list.of([2, 5]),
    @immut/list.of([3, 4]),
    @immut/list.of([4, 2]),
  ])
  assert_eq(find_smallest_set_of_vertices(6, edges), [0, 3])
}

///|
test "example 2" {
  let edges = @immut/list.of([
    @immut/list.of([2, 0]),
    @immut/list.of([2, 3]),
    @immut/list.of([4, 1]),
    @immut/list.of([4, 2]),
  ])
  assert_eq(find_smallest_set_of_vertices(5, edges), [4])
}
