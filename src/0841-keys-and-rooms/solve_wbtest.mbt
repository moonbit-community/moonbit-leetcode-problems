///|
test "example 1" {
  let rooms : @immut/list.T[@immut/list.T[Int]] = @immut/list.of([
    @immut/list.of([1]),
    @immut/list.of([2]),
    @immut/list.of([3]),
    @immut/list.of([]),
  ])
  assert_eq!(can_visit_all_rooms(rooms), true)
}

///|
test "example 2" {
  let rooms : @immut/list.T[@immut/list.T[Int]] = @immut/list.of([
    @immut/list.of([1, 3]),
    @immut/list.of([3, 0, 1]),
    @immut/list.of([2]),
    @immut/list.of([0]),
  ])
  assert_eq!(can_visit_all_rooms(rooms), false)
}
